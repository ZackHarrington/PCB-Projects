/* Billy Bass Main

*/

// ESP-IDF Default Libraries
#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"
#include "esp_log.h"
// Should be automatically included
//#include "sdkconfig.h"

// Personal Headers
#include "config/billy_config.h"
#include "src/BillyMotor.h"


// Log Tag (source of log message)
static const char *TAG = "main";

// State Enum and Variable
typedef enum {
    SLEEP,
    IDLE,
    ACTIVE,
    BLUETOOTH_PAIRING,
    BLUETOOTH_IDLE,
    BLUETOOTH_ACTIVE
} State;

// static is used here to keep the global variable within the scope of the file
// additionally, ESP-IDF style guide specifies putting s_ before static variables
static State s_state = IDLE;

// Motor Variables
static BillyMotor s_motor_mouth = {PIN_MOUTH_1, PIN_MOUTH_2, PWM_MOUTH_1_CHANNEL, PWM_MOUTH_2_CHANNEL, PWM_SPEED_MODE};
static BillyMotor s_motor_head = {PIN_HEAD_1, PIN_HEAD_2, PWM_HEAD_1_CHANNEL, PWM_HEAD_2_CHANNEL, PWM_SPEED_MODE};
static BillyMotor s_motor_tail = {PIN_TAIL_1, PIN_TAIL_2, PWM_TAIL_1_CHANNEL, PWM_TAIL_2_CHANNEL, PWM_SPEED_MODE};


// Functions
// Function for changing states
static void state_change(State new_state) {
    // Handle hardware changes between states
    switch (new_state) {
        case SLEEP:
            //- Mute aux, ignore inputs
            //- Deactivate I2S interface
            //- Deactivate PWM? maybe not because when to activate it?
            break;
        case IDLE:
            //- Indicate wake in some way
            //- Activate I2S interface, un-mute aux
            //- Activate/Deactivate PWM? 
            //- Check for change in switch state - maybe before indicating wake?
            break;
        case ACTIVE:
            // Code to execute if new_state is ACTIVE
            break;
        case BLUETOOTH_PAIRING:
            //- Mute aux
            break;
        case BLUETOOTH_IDLE:
            //- Allow aux?
            break;
        case BLUETOOTH_ACTIVE:
            //- Mute aux
            break;
        default:    // Invalid State
            ESP_LOGE(TAG, "Attempted to change to invalid state: %d!", new_state);
            return;
    }
    
    // Officially change states
    s_state = new_state;
}

// Function for SLEEP state
static void state_sleep(void) {
    // Function body for SLEEP state

    // Do minimal processing, only wake when button is pressed (interrupt?)
    // If you can auto reconnect with Bluetooth, wake for that too
    // If wake word is ever implemented, wake for that too
}

// Function for IDLE state
static void state_idle(void) {
    // Function body for IDLE state

    // Monitor I/Os (button, switch, volume touch pads, aux audio)
    //  - If nothing happens after X time, go to Sleep
    //  - If button held down for X time, go to Bluetooth Pairing
    //  - If you can just directly connect with your phone, go to Bluetooth Idle
    //  - If aux audio is detected, go to Active
}

// Function for ACTIVE state
static void state_active(void) {
    // Function body for ACTIVE state

    //- Engage signal processing with aux stream, related motor movement
    //- Output audio if necessary? (using I2S instead of un-muted)
    //- Monitor I/Os (button, switch, volume touch pads, aux audio) (interrupt?)
    //  - If aux audio goes silent for X time, go to Idle
    //  - If button held down for X time, go to Bluetooth Pairing
    //  - If you can just directly connect with your phone, go to Bluetooth Idle
}

// Function for BLUETOOTH_PAIRING state
static void state_bluetooth_pairing(void) {
    // Function body for BLUETOOTH_PAIRING state

    //- ignore inputs or allow volume change?
    //- Audibly indicate waiting for Bluetooth connection, move tail motor slowly back and forth?
    //  - If connection is successful audibly indicate, go to Bluetooth Idle
    //  - If connection is unsuccessful or X time passes or button held down, go to Idle
}

// Function for BLUETOOTH_IDLE state
static void state_bluetooth_idle(void) {
    // Function body for BLUETOOTH_IDLE state

    //- Monitor I/Os (button, switch, volume touch pads, aux audio)
    //  - If connection indicates song or sound coming, go to Bluetooth Active
    //  - Otherwise don't leave until connection terminated or button held down, then go to Idle
}

// Function for BLUETOOTH_ACTIVE state
static void state_bluetooth_active(void) {
    // Function body for BLUETOOTH_ACTIVE state

    //- Engage signal processing with Bluetooth stream, related motor movement
    //- Output audio
    //- Monitor I/Os (button, switch, volume touch pads, aux audio) (interrupt?)
    //  - If audio stream ends, go to Bluetooth Idle
    //  - If connection is terminated or button held down, go to Idle
}



// Main Function
void app_main(void)
{
    // Setup
    ESP_LOGI(TAG, "--- SETUP ---");

    // Define GPIOs
    gpio_set_direction(PIN_BUTTON, GPIO_MODE_INPUT);
    gpio_set_direction(PIN_SWITCH, GPIO_MODE_INPUT);
    //gpio_set_direction(PIN_TOUCH_PLUS, GPIO_MODE_INPUT);
    //gpio_set_direction(PIN_TOUCH_MINUS, GPIO_MODE_INPUT);
    ESP_LOGI(TAG, "GPIOs: \tSuccess");

    // Initialize the motors
    billymotor_init_timer(PWM_SPEED_MODE, PWM_RESOLUTION, LEDC_TIMER_0, PWM_FREQUENCY, LEDC_AUTO_CLK);
    // the same timer, and thus PWM frequency is used for all motors
    billymotor_init(&s_motor_mouth, LEDC_TIMER_0);
    billymotor_init(&s_motor_head, LEDC_TIMER_0);
    billymotor_init(&s_motor_tail, LEDC_TIMER_0);
    ESP_LOGI(TAG, "Motors: \tSuccess");

    /* How I want this to flow / be organized

       Startup: 
        - Initialize everything
        - Perform checks to verify functionality
            - Move each motor?
            - play something?
            - Audibly say everything started up successfully (while moving motors)?
                - "Initializing", "Start up successful", "Calibration Successful"
            - go to Idle
    */

    ESP_LOGI(TAG, "--- END SETUP ---");

    // Loop
    while (1) 
    {
        /* Process flow (States):
        - (Sleep) Nothing happening
        - (Idle) Woken up
        - (Bluetooth Pairing) Waiting
        - (Bluetooth Idle) Connected
        - (Bluetooth Active) Bluetooth Playing
        - (Active) Aux Playing
         */

        // Motor Test
        if (gpio_get_level(PIN_BUTTON) == 1) {
            ESP_LOGI(TAG, "Motor mouth move");
            billymotor_move(&s_motor_mouth, FORWARD, 255);
            vTaskDelay(500 / portTICK_PERIOD_MS);
            billymotor_move(&s_motor_mouth, BRAKE, 160);
            vTaskDelay(500 / portTICK_PERIOD_MS);
            billymotor_move(&s_motor_mouth, COAST, 0);
        } 
        else {
            ESP_LOGI(TAG, "COAST");
            billymotor_move(&s_motor_mouth, COAST, 0);
        }

        //ESP_LOGI(TAG, "Turning the LED %s!", s_led_state == true ? "ON" : "OFF");
        /* Set the GPIO level according to the state (LOW or HIGH)*/
        //gpio_set_level(PIN_TOUCH_PLUS, s_led_state);
        /* Toggle the LED state */
        //s_led_state = !s_led_state;
        // Converts milliseconds to freeRTOS ticks
        vTaskDelay(1000 / portTICK_PERIOD_MS);
    }
}
