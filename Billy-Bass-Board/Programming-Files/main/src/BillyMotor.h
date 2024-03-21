/* Billy Bass Motor Controller Logic
*/

#ifndef BILLYMOTOR_H
#define BILLYMOTOR_H

#include <driver/ledc.h>


// Motor Structure
typedef struct {
    gpio_num_t pin1;
    gpio_num_t pin2;
    ledc_channel_t channel1;
    ledc_channel_t channel2;
    ledc_mode_t speed_mode;
} BillyMotor;

// Motor Direction Enum
typedef enum {
    FORWARD,
    REVERSE,
    BRAKE,
    COAST
} BillyMotorDirection;


// Functions
/* 
 * @brief   Initializes the hardware timer (oscillator) used for the PWM channels, typically called once for all channels
 *
 * @param   speed_mode LEDC speed mode, select from low or high speed in ledc_mode_t
 * @param   duty_resolution LEDC duty resolution, select from 1-20 in ledc_timer_bit_t, max duty is (2^duty_resolution)-1
 * @param   timer_num LEDC timer index, select from 0-3 in ledc_timer_t
 * @param   freq_hz PWM frequency
 * @param   clk_cfg LEDC clock config, select from ledc_clk_cfg_t
 */
void billymotor_init_timer(ledc_mode_t speed_mode, ledc_timer_bit_t duty_resolution, ledc_timer_t timer_num, uint32_t freq_hz, ledc_clk_cfg_t clk_cfg);

/* 
 * @brief   Initializes the PWM channels for the specified motor
 *
 * @param   motor BillyMotor to be initialized
 * @param   speed_mode LEDC speed mode, select from low or high speed in ledc_mode_t
 * @param   timer_num LEDC timer index, select from 0-3 in ledc_timer_t
 */
void billymotor_init(BillyMotor* motor, ledc_timer_t timer_num);

/* 
 * @brief   Sets the correct direction and duty cycle using the specified motor's channels
 *
 * @param   motor BillyMotor to control
 * @param   direction relative direction of motor, select from BillyMotorDirection
 * @param   duty speed, range of duty setting is [0, (2^duty_resolution)-1], a larger input can cause overflow into other registers
 */
void billymotor_move(BillyMotor* motor, BillyMotorDirection direction, uint32_t duty);

#endif //BILLYMOTOR_H