#include "BillyMotor.h"

#include "esp_log.h"

// Log Tag (source of log message)
static const char *TAG = "billymotor";


void billymotor_init_timer(ledc_mode_t speed_mode, ledc_timer_bit_t duty_resolution, ledc_timer_t timer_num, uint32_t freq_hz, ledc_clk_cfg_t clk_cfg) {
    ledc_timer_config_t ledc_timer = {
        .speed_mode = speed_mode,
        .duty_resolution = duty_resolution,
        .timer_num = timer_num,
        .freq_hz = freq_hz,
        .clk_cfg = clk_cfg,
    };
    ledc_timer_config(&ledc_timer);
}

void billymotor_init(BillyMotor* motor, ledc_timer_t timer_num) {
    // Check if the timer has been setup yet
    if (ledc_get_freq(motor->speed_mode, timer_num) == 0) {
        ESP_LOGE(TAG, "Attempted to setup motor before timer: timer %d!\nInitializing to 100kHz with 10-bit resolution", timer_num);
        billymotor_init_timer(motor->speed_mode, LEDC_TIMER_10_BIT, timer_num, 100000, LEDC_AUTO_CLK);
    }

    // Define the pins as outputs
    gpio_set_direction(motor->pin1, GPIO_MODE_OUTPUT);
    gpio_set_direction(motor->pin2, GPIO_MODE_OUTPUT);

    // Configure the channels with the timer
    ledc_channel_config_t ledc_channel1 = {
        .channel = motor->channel1,
        .duty = 0,
        .gpio_num = motor->pin1,
        .speed_mode = motor->speed_mode,
        .hpoint = 0,
        .timer_sel = timer_num,
    };
    ledc_channel_config(&ledc_channel1);

    ledc_channel_config_t ledc_channel2 = {
        .channel = motor->channel2,
        .duty = 0,
        .gpio_num = motor->pin2,
        .speed_mode = motor->speed_mode,
        .hpoint = 0,
        .timer_sel = timer_num,
    };
    ledc_channel_config(&ledc_channel2);
}

void billymotor_move(BillyMotor* motor, BillyMotorDirection direction, uint32_t duty) {
    /* I chose not to check if the duty cycle is already set using ledc_get_duty()
       to keeps each function call's execution time roughly the same 
     */
    switch (direction) {
        case FORWARD:
            // Need to set the duty cycle then apply the changes
            ledc_set_duty(motor->speed_mode, motor->channel1, duty);
            ledc_set_duty(motor->speed_mode, motor->channel2, 0);
            ESP_LOGD(TAG, "%d", direction);
            break;
        case REVERSE:
            ledc_set_duty(motor->speed_mode, motor->channel1, 0);
            ledc_set_duty(motor->speed_mode, motor->channel2, duty);
            break;
        case BRAKE:
            ledc_set_duty(motor->speed_mode, motor->channel1, duty);
            ledc_set_duty(motor->speed_mode, motor->channel2, duty);
            break;
        case COAST:
            ledc_set_duty(motor->speed_mode, motor->channel1, 0);
            ledc_set_duty(motor->speed_mode, motor->channel2, 0);
            break;
        default:
            ESP_LOGE(TAG, "Attempted to change to invalid direction: %d!", direction);
            return;
    }
    
    // Apply the changes
    ledc_update_duty(motor->speed_mode, motor->channel1);
    ledc_update_duty(motor->speed_mode, motor->channel2);
    ESP_LOGI(TAG, "%d", direction);
}