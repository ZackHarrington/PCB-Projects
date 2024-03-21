// User Input
#define BUTTON_PIN 2
#define SWITCH_PIN 34
#define TOUCH_PLUS_PIN 4
#define TOUCH_MINUS_PIN 15

// SD Card
#define SD_CS_PIN 5
#define SD_CLK_PIN 18
#define SD_MISO_PIN 19
#define SD_MOSI_PIN 23

// Audio
#define AUX_MUTE_PIN 21
#define I2S_BCLK_PIN 32
#define I2S_LRCLK_PIN 33
#define I2S_ADC_DIN_PIN 35
#define I2S_DAC_DOUT_PIN 22

// Motors
#define MOUTH_1_PIN 13
#define MOUTH_2_PIN 12
#define HEAD_1_PIN 14
#define HEAD_2_PIN 27
#define TAIL_1_PIN 26
#define TAIL_2_PIN 25

#define PWM_MOUTH_1_CHANNEL 0 // 16 PWM Channels 0-15
#define PWM_MOUTH_2_CHANNEL 1
#define PWM_HEAD_1_CHANNEL 2
#define PWM_HEAD_2_CHANNEL 3
#define PWM_TAIL_1_CHANNEL 4  
#define PWM_TAIL_2_CHANNEL 5
#define PWM_FREQUENCY 120000 // 120kHz (Max w/ 8-bit is 312.5kHz) - above the audible range of most animals - moth 300k - check pin for EMI?
#define PWM_RESOLUTION 8    // up tp 16bit resolution