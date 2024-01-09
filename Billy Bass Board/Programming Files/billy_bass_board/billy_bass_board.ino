#include <Wire.h>
#include <Ticker.h>
#include "AudioSD.h"
#include "BillyMotor.h"

#define BUTTON_PIN 2

#define SD_CS_PIN 5
#define SD_CLK_PIN 18
#define SD_MISO_PIN 19  // need 10k pullup?
#define SD_MOSI_PIN 23  // ^

#define AUDIO_OUT_PIN 25
#define AUDIO_INSERT_DETECT_PIN 27
#define AUDIO_IN_AUX_PIN 34
#define AUDIO_IN_MIC_PIN 35

#define I2C_SDA_PIN 21
#define I2C_SCL_PIN 22

//#define PWM_MOUTH_PIN 13
#define PWM_MOUTH_PIN 4     // usually IO13 but it was bridged to ground, set to IO4 for board 1
#define PWM_HEAD_PIN 14
#define PWM_TAIL_PIN 15

#define PWM_MOUTH_CHANNEL 0 // 16 PWM Channels 0-15
#define PWM_HEAD_CHANNEL 1
#define PWM_TAIL_CHANNEL 2  
#define PWM_FREQUENCY 80000 // 80kHz (Max w/ 8-bit is 312.5kHz)
#define PWM_RESOLUTION 8    // up tp 16bit resolution


AudioSD audioSD;
BillyMotor mouth;
BillyMotor head;
BillyMotor tail;


void setup() {
  Serial.begin(115200);
  Serial.println("-- Initialization --");

  // Pin modes - only set digital pins to a mode
  Serial.print("Initializing Pins... ");
  // Button
  pinMode(BUTTON_PIN, INPUT);
  Serial.println("SUCCESS");

  // SD Card
  Serial.print("Initializing SD Card... ");
  if (!audioSD.connect(SD_CS_PIN)) {
    Serial.println("FAIL");
  } else {
    Serial.println("SUCCESS");
    audioSD.printSDData();
  }

  /*uint32_t duration = audioSD.play("/0.wav");
  Serial.print(" Playing /0.wav. Expected playback time: ");
  Serial.print(duration/1000000.0);
  Serial.println("sec");
*/
  // I2C
  Serial.print("Initializing I2C Bus... ");
  Wire.begin();
  Serial.println("SUCCESS");

  // PWM
  Serial.print("Initializing PWM... ");
  mouth.init_motor(PWM_MOUTH_PIN, PWM_MOUTH_CHANNEL, PWM_FREQUENCY, PWM_RESOLUTION, 40);
  head.init_motor(PWM_HEAD_PIN, PWM_HEAD_CHANNEL, PWM_FREQUENCY, PWM_RESOLUTION, 70);
  tail.init_motor(PWM_TAIL_PIN, PWM_TAIL_CHANNEL, PWM_FREQUENCY, PWM_RESOLUTION, 40);
  Serial.println("SUCCESS");
  Serial.println(" Channel " + String(PWM_MOUTH_CHANNEL) + ": " + String((float)PWM_FREQUENCY/1000) + "kHz");
  Serial.println(" Channel " + String(PWM_HEAD_CHANNEL) + ": " + String((float)PWM_FREQUENCY/1000) + "kHz");
  Serial.println(" Channel " + String(PWM_TAIL_CHANNEL) + ": " + String((float)PWM_FREQUENCY/1000) + "kHz");

  // WiFi
  // Bluetooth w/ button?

  randomSeed(analogRead(0));

  Serial.println("-- Main Loop --");
}


void buttonPress() {
  bool moving = true;
  // Choose a random action between 1 and 4
  int action = random(1, 5);
  Serial.println(action);

  while(moving) {
    switch(action) {
      case 1: // Wiggle Tail
        for (int i = 0; i < random(3, 9); i++) {
          // 1. Call move with initial parameters
          tail.move(FORWARD, 170, 3);
          // 2. Call move loop
          for (int j = 0; j < random(50, 150); j++) {
            tail.moveLoop(3);
            delay(3);
          }
          // 3. Call move with release
          tail.move(RELEASE);
          delay(random(200, 350));
        }
        break;
      case 2: // Stare
        // 1. Call move with initial parameters
        head.move(FORWARD, 160, 0.3);
        // 2. Call move loop
        for (int i = 0; i < 200; i++) {
          head.moveLoop(10);
          delay(10);
        }
        // Hold at lower PWM
        head.move(FORWARD, 100, 0.2);
        for (int i = 0; i < random(200, 400); i++) {
          head.moveLoop(10);
          delay(10);
        }
        // 3. Call move with release
        head.move(RELEASE);
        delay(500);
        break;
      case 3: // Speak
        for (int i = 0; i < random(4, 16); i++) {
          // 1. Call move with initial parameters
          mouth.move(FORWARD, random(100, 170), 1.5);
          // 2. Call move loop
          for (int j = 0; j < random(50, 120); j++) {
            mouth.moveLoop(3);
            delay(3);
          }
          // 3. Call move with release
          mouth.move(RELEASE);
          delay(random(170, 250));
        }
        break;
      default:
        break;
    }

    moving = false;
  }

  // Mouth needs 70 min, simply changes speed up tp 170
  // Current draw from min to max is 150mA - 300mA (130) - 360mA
  // Min hold 40 (115mA)

  // Head needs 120 min, 170 max, 150 is really the useful point
  // Current draw from min to max is 380mA - 500mA, 480mA at 150
  // Min hold 70 (250mA), 40 (150mA)

  // Tail needs 120 min, 170 max
  // Current draw from min to max is 250mA - 300mA (150) - 360mA
  // Min hold 40 (115mA)
  
  // Any more than 170 and binding can occur, also no noticable improvement other than slight speed increase
  // Any less than min and no useful motion is noticeable
  // They appear to hold/bind at around 500mA, when ran less than a second they run around 200 - 300mA
}


//byte val = 0;

//uint32_t dutyCycle = 120; 
//long currentTime = 0;
//long lastTime = 0;
//bool flip = false;

void loop() {
  // Temporary functionality until new board
  if (digitalRead(BUTTON_PIN)) {
    buttonPress();
  }

  delay(250);


  /*if (audioSD.canPlay()) {
    audioSD.loop(AUDIO_OUT_PIN);
  } else {
    ;
  }*/
  
  //Serial.println(analogRead(AUDIO_INSERT_DETECT_PIN));
  // reads 0 when not inserted, peaks between 200 and 250 analog when inserted
  
  //int audioValue = analogRead(AUDIO_IN_MIC_PIN);
  //int audioValue = analogRead(AUDIO_IN_AUX_PIN);
  //Serial.println(audioValue);

  //int buttonValue = analogRead(BUTTON_PIN);
  //Serial.println(buttonValue);

  //accelerationTicker.attach_ms(tickerPeriod, tickerCallback);

  /* Serial.println("Transmitting value: " + String(val));
  Wire.beginTransmission(62);     // #62 (0x3E)
  Wire.write(val);
  byte error_code = Wire.endTransmission(false); 
  Serial.println("Error Code: " + String(error_code));

  val+= 5;
  if (val >= 127) {
    val = 0;
  }

  delay(1000);
  */

}