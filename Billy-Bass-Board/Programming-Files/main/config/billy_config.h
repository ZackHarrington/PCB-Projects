/* Billy Bass Config File
   
   Contains all #define constants
*/

#ifndef CONFIG_H
#define CONFIG_H

// User Input (GPIOs)
#define PIN_BUTTON 2
#define PIN_SWITCH 34
#define PIN_TOUCH_PLUS 4
#define PIN_TOUCH_MINUS 15

// SD Card
#define PIN_SD_CS 5
#define PIN_SD_CLK 18
#define PIN_SD_MISO 19
#define PIN_SD_MOSI 23

// Audio
#define PIN_AUX_MUTE 21
#define PIN_I2S_BCLK 32
#define PIN_I2S_LRCLK 33
#define PIN_I2S_ADC_DIN 35
#define PIN_I2S_DAC_DOUT 22

// Motors
#define PIN_MOUTH_1 13
#define PIN_MOUTH_2 12
#define PIN_HEAD_1 14
#define PIN_HEAD_2 27
#define PIN_TAIL_1 26
#define PIN_TAIL_2 25

#define PWM_MOUTH_1_CHANNEL 0    // 16 PWM Channels 0-15
#define PWM_MOUTH_2_CHANNEL 1
#define PWM_HEAD_1_CHANNEL 2
#define PWM_HEAD_2_CHANNEL 3
#define PWM_TAIL_1_CHANNEL 4  
#define PWM_TAIL_2_CHANNEL 5
#define PWM_FREQUENCY 24000//120000     // 120kHz (Max w/ 8-bit is 312.5kHz) - above the audible range of most animals - moth 300k - check pin for EMI?
#define PWM_RESOLUTION 8         // up tp 16bit resolution
#define PWM_SPEED_MODE 1         // ledc.h defines LEDC_LOW_SPEED_MODE = 1

#endif //CONFIG_H