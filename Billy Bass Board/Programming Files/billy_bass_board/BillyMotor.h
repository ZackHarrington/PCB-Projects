#ifndef BILLYMOTOR_H
#define BILLYMOTOR_H

#include <Arduino.h>
#include <esp32-hal-ledc.h>


enum Direction {
  FORWARD,
  RELEASE
};


// Controls the movement of a motor by a channel's PWM duty cycle
class BillyMotor {

public:
  BillyMotor();

  /* Initialize the motor using PWM
   * - holdDutyCycle: the minimum duty cycle to keep the motor extended
   * - Return:
   */
  void init_motor(uint8_t PWMPin, uint8_t PWMChannel, uint32_t PWMFrequency, 
                  uint8_t PWMResolution, uint32_t minDutyCycle);
  /* Move the motor with a maximum duty cycle
   * - acceleration: if 0, the motor will be directly set to the duty cycle
   */
  void move(Direction direction, uint32_t dutyCycle = 0, float acceleration = 0);
  // Loop function to do accelerative motion
  void moveLoop(uint32_t msPassed);

private:
  // Releases the motor by setting the PWM to 0 duty cycle
  void release();

  uint8_t channel;
  uint32_t currentDutyCycle;
  uint32_t maxDutyCycle;
  uint32_t holdDutyCycle;
  float accelerationFactor;
  bool hold;

};

#endif // BILLYMOTOR_H