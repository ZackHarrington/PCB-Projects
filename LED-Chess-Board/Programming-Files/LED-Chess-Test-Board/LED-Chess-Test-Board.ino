// ESP32 Driver
// Pin 4 -> Drive
// GND -> GND

#define PWM_FREQUENCY 360000
#define PWM_RESOLUTION 7
#define PIN 4

void setup() {
  // Configure PWM pin(s)
  ledcAttach(PIN, PWM_FREQUENCY, PWM_RESOLUTION);
}
void loop() {
  // Set the duty cycle, must be lower than 2^resolution - 1
  
  ledcWrite(PIN, 63); // 50%
  delay(10);
  //ledcWrite(PIN, 0);
  //delay(10);
}

