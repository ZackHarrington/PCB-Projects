#include <Adafruit_MotorShield.h>

// Motor Shield object with the default I2C address
// Can use different addresses for stacking, ex. Adafruit_MotorShield(0x61);
Adafruit_MotorShield AFMS = Adafruit_MotorShield();

// DC Motor pointer
// Select the 'port' or motor by specifying the number
Adafruit_DCMotor *headMotor = AFMS.getMotor(1);
Adafruit_DCMotor *mouthMotor = AFMS.getMotor(2);
Adafruit_DCMotor *tailMotor = AFMS.getMotor(3);

void setup() {
  Serial.begin(9600);
  Serial.println("Adafruit Motorshield v2 - DC Motor test");

  // Attempt to begin communication with the shield
  // You can specify a frequency, say 1KHz, but default is 1.6KHz
  if (!AFMS.begin()) {
    Serial.println("Could not find Motor Shield. Check wiring.");
    while(1); // Like a break
  }
  Serial.println("Motor Shield found!");
  
  // Set the speed to start, from 0 (off) to 255 (max speed)
  mouthMotor->setSpeed(255);
  mouthMotor->run(FORWARD);  // move forward
  delay(100);
  mouthMotor->run(RELEASE);  // stop moving
}

void loop() {
}
