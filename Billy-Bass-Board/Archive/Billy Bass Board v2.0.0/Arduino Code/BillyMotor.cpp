#include "BillyMotor.h"

BillyMotor::BillyMotor() { 
  channel = 0;
  currentDutyCycle = 0;
  maxDutyCycle = 0;
  holdDutyCycle = 0;
  accelerationFactor = 0;
  hold = false;
}

void BillyMotor::init_motor(uint8_t PWMPin, uint8_t PWMChannel, uint32_t PWMFrequency, 
                            uint8_t PWMResolution, uint32_t minDutyCycle) {
  holdDutyCycle = minDutyCycle;

  // Configure PWM Channel
  channel = PWMChannel;
  ledcSetup(PWMChannel, PWMFrequency, PWMResolution);

  // Assign Channel to Pin
  ledcAttachPin(PWMPin, PWMChannel);
}

void BillyMotor::move(Direction direction, uint32_t dutyCycle, float acceleration) {
  switch (direction) {
    case FORWARD:
      if (acceleration == 0) {
        ledcWrite(channel, dutyCycle);
        return;
      }
      maxDutyCycle = dutyCycle;
      accelerationFactor = acceleration;
      break; 
    default:
      release();
  }
}

void BillyMotor::moveLoop(uint32_t msPassed) {
  if (hold) {
    return;
  }

  // Calculate new duty cycle
  currentDutyCycle += accelerationFactor * msPassed;
  //Serial.println(currentDutyCycle);

  // Check if it has passed any thresholds
  if (accelerationFactor >= 0) {
    if (currentDutyCycle >= maxDutyCycle) {
      currentDutyCycle = maxDutyCycle;
      //accelerationFactor = -accelerationFactor;
    } 
  } else {
    // As an unsigned integer it doesn't go negative - it just overflows
    if (currentDutyCycle <= holdDutyCycle || currentDutyCycle > UINT32_MAX / 2) {
      currentDutyCycle = holdDutyCycle;
      hold = true;
    }
  }

  // Assign new duty cycle
  ledcWrite(channel, currentDutyCycle);
}


// Private Functions
void BillyMotor::release() {
  currentDutyCycle = 0;
  accelerationFactor = 0;
  hold = false;
  ledcWrite(channel, 0);
}