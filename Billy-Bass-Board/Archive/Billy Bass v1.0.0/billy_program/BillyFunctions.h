#include <Adafruit_MotorShield.h>

// -- Pin Assignments
/* Available Pins:
 * Analog:  0 - 3 
 *  4, 5 used to communicate with motor shield's I2C
 * Digital: 0 - 3, 5 - 10 (RX and TX are used for uploading code to the arduino)
 *  4, 11 - 13 used for SD card communication (CS, MOSI, MISO, and CLK respectively)
 */
const int audioVoltagePin = A0;
const int alexaWakePin = A1;
const int buttonPin = 10;
const int customAudioOutPin = 9;
const int toggleMovementPin = 8;
const int alexaSpeakerControlPin = 7;
const int customSpeakerControlPin = 6;
const int auxVolumeControlPin = 2;


// -- Motor Shield objects
// Uses default address
Adafruit_MotorShield AFMS = Adafruit_MotorShield();   

#define NUM_MOTORS 3
Adafruit_DCMotor *head = AFMS.getMotor(1);
Adafruit_DCMotor *mouth = AFMS.getMotor(2);
Adafruit_DCMotor *tail = AFMS.getMotor(3);

Adafruit_DCMotor *motors[NUM_MOTORS] = {head, mouth, tail};
// Functions:
//  Adafruit_DCMotor->setSpeed()  // 0 - 255
//   - Note: motors squeal when using PWM speed < 255
//  Adafruit_DCMotor->run()       // FORWARD, BACKWARD, BREAK, RELEASE


// -- Billy objects
enum BillyStatus {
  INITIALIZING,
  ACTIVE_ALEXA,
  ACTIVE_AUDIO,
  ACTIVE_BUTTON,
  SLEEPING
};
BillyStatus billyStatus = INITIALIZING;



// -- Single motor default functions
// Ensures the motor is moved back to it's resting position
void resetMotor(const Adafruit_DCMotor *motor) {
  motor->run(BACKWARD);
  delay(15);
  motor->run(RELEASE);
}

// Runs the specified motor through it's cycle and holds it active for the specified duration
void runMotorCycle(const Adafruit_DCMotor *motor, const uint16_t holdDelay = 500) {
  motor->run(FORWARD);
  delay(holdDelay);
  resetMotor(motor);
}

// Runs the specified motor through it's cycle but also holds it inactive for the same duration
void runMotorLongCycle(const Adafruit_DCMotor *motor, const uint16_t holdDelay = 500) {
  runMotorCycle(motor, holdDelay);
  delay(holdDelay);
}


// -- Dual motor default functions
// Ensures the motors are moved back to their resting position
void resetTwoMotors(const Adafruit_DCMotor *motor1, const Adafruit_DCMotor *motor2) {
  motor1->run(BACKWARD);
  motor2->run(BACKWARD);
  delay(15);
  motor1->run(RELEASE);
  motor2->run(RELEASE);
}

// Runs the specified motors throught their cycles, holding active for the specified duration
void runTwoMotorCycles(const Adafruit_DCMotor *motor1, const Adafruit_DCMotor *motor2,
                        const uint16_t holdDelay = 500) {
  motor1->run(FORWARD);
  motor2->run(FORWARD);
  delay(holdDelay);
  resetTwoMotors(motor1, motor2);
}

// Runs the specified motors through thier cycles, holding inactive for the same duration
void runTwoMotorLongCycles(const Adafruit_DCMotor *motor1, const Adafruit_DCMotor *motor2,
                            const uint16_t holdDelay = 500) {
  runTwoMotorCycles(motor1, motor2, holdDelay);
  delay(holdDelay);
}


// -- Other default/setup functions
// Attempts to begin communication with the shield, returns 0 for fail, then initializes all of the motors
byte setupFishMotors() {
  // Initializes at a default frequency of 1.6KHz
  if (!AFMS.begin()) {
    Serial.println(F("  - Could not find Motor Shield. Check wiring."));
    return 0;
  }
  Serial.println(F("  - Motor Shield found!"));
  
  for (uint8_t i = 0; i < NUM_MOTORS; i++) {
    motors[i]->setSpeed(255);
  }
  return 1;
}

// Moves each fish motor to test their functionability
void testFishMotors() {
  runMotorLongCycle(head, 1000);
  runMotorLongCycle(mouth, 1000);
  runMotorLongCycle(tail, 1000);
}

// Puts billy's motors to sleep
void sleepMotors() {
  head->run(RELEASE);
  tail->run(RELEASE);
  mouth->run(RELEASE);
}


// -- Fish Functions
// Opens the mouth then releases it
void talk(const uint16_t delayTime = 200) {
  mouth->run(FORWARD);
  delay(delayTime/2);
  mouth->run(BACKWARD);
  delay(delayTime/2);
  mouth->run(RELEASE);
}

// Moves the tail up and down, "randomly" if delayTime set to 0
void tapTail(uint16_t delayTime = 0) {
  if (delayTime > 0) {
    tail->run(FORWARD);
    delay(delayTime/2);
    tail->run(RELEASE);
    delay(delayTime/2);
  } else {
    if (random(0, 16) == 0) {
      tail->run(FORWARD);
      delay(150);
      if (random(0, 2) == 0) {
        delay(100);
        tail->run(BACKWARD);
        delay(100);
      }
      tail->run(BACKWARD);
      delay(150);
      tail->run(RELEASE);
    }
  }
}

// Moves the head and tail out while opening the mouth, makes the noise then releases
void sneeze() {
  digitalWrite(customSpeakerControlPin, HIGH);
  digitalWrite(auxVolumeControlPin, LOW);
  mouth->run(FORWARD);
  delay(400);
  head->run(FORWARD);
  tail->run(FORWARD);
  playSDSound(SNEEZE);  
  delay(1000);
  mouth->run(RELEASE);
  head->run(RELEASE);
  tail->run(RELEASE);
  delay(100);
  digitalWrite(customSpeakerControlPin, LOW);
  digitalWrite(auxVolumeControlPin, HIGH);
}

// Makes billy say progressively angrier and angrier things
void angerBilly(const uint8_t numPresses) {
  /* Anger billy */
    // Slowly getting angrier:
    // 1.  can i help you
    // 2.  stare at them
    // 3.  what do you want
    // 4.  look over than back
    // 5.  oy mate stop pushing my button
    // 6.  i said stop pushing my button
    // 7.  alright quit it would ya
    // 8.  squirm 
    // 9.  squirm a lot
    // 10. go away
    // 11. please? go away
    // 12. medium squirm
    // 13. i can deactivate this button you know
    // 14. tail
    // 15. big squirm
    // 16. you leave me no choice...
    // 17. big squirm
    // 18. push it one more time... (evil) i dare you
    // 19. evil laugh
    // 21. demonic breathing (continuing occasionally when you push the button after 23)//////////////////
    // 23. say good bye to your button...
    // default: delay 2000;
}

// Makes billy say a fun fact about fish
void funFact() {
    // did you know..
    // fish can see up but not down
    // sharks are the only fish that can blink
    // a sail fish can swim up to 68 mph
    // most fish can't swim backwards
    // fish scales have growth rings
}

// Releases the motors and ends the playback of a sound
void cancelSong() {
  head->run(RELEASE);
  tail->run(RELEASE);
  mouth->run(RELEASE);
  stopSDSound();
}

// Movements assigned to the song Don't Worry Be Happy, does alexa wake and button press checks
void dontWorryBeHappy() {
  digitalWrite(customSpeakerControlPin, HIGH);
  digitalWrite(auxVolumeControlPin, LOW);
  playSDSound(DONT_WORRY_BE_HAPPY);
  if (digitalRead(toggleMovementPin) == LOW) {
    delay(4200);
    for (int i = 0; i < 19; i++) {
      if (digitalRead(buttonPin) == LOW) { cancelSong(); return; }
      delay(1400);
    }
  } else {
    talk(400);                  // Here's
    talk(200);                  // a
    talk(100);                  // li
    talk(200);                  // ttle
    talk(400);                  // song
    talk(300);                  // I
    talk(400);                  // wrote
    delay(500);
    if (digitalRead(buttonPin) == LOW) { cancelSong(); return; }
    talk(250);                  // you
    talk(400);                  // might
    talk(400);                  // want
    talk(200);                  // to
    talk(450);                  // sing
    talk(100);                  // it
    if (digitalRead(buttonPin) == LOW) { cancelSong(); return; }
    talk(500);                  // note
    talk(400);                  // for
    mouth->run(FORWARD);
    delay(250);                 // note
    mouth->run(RELEASE);
    if (digitalRead(buttonPin) == LOW) { cancelSong(); return; }
    head->run(FORWARD);
    delay(250);
    talk(550);                  // Don't
    talk(300);                  // wo
    talk(300);                  // rry
    if (digitalRead(buttonPin) == LOW) { cancelSong(); return; }
    tapTail(870);
    tapTail(870);
    delay(560);
    if (digitalRead(buttonPin) == LOW) { cancelSong(); return; }
    talk(500);                  // Be
    talk(300);                  // ha
    talk(300);                  // ppy
    if (digitalRead(buttonPin) == LOW) { cancelSong(); return; }
    delay(200);
    head->run(RELEASE);
    delay(200);
    talk(450);                  // Don't
    talk(300);                  // wo
    talk(300);                  // rry
    delay(400);
    talk(300);                  // Be
    talk(100);                  // ha
    talk(200);                  // ppy
    talk(300);                  // now
    if (digitalRead(buttonPin) == LOW) { cancelSong(); return; }
    for (int i = 0; i < 5; i++) {
      tapTail(870);
    }
    delay(300);                 // 000000000000000ooooo
    if (digitalRead(buttonPin) == LOW) { cancelSong(); return; }
    head->run(FORWARD);
    delay(200);
    talk(550);                  // Don't
    talk(200);                  // wo
    talk(300);                  // rry
    if (digitalRead(buttonPin) == LOW) { cancelSong(); return; }
    tapTail(870);
    tapTail(870);
    tail->run(FORWARD);
    delay(435);
    tail->run(RELEASE);
    delay(325);
    if (digitalRead(buttonPin) == LOW) { cancelSong(); return; }
    talk(400);                  // Be
    talk(300);                  // ha
    talk(300);                  // ppy
    delay(200);
    head->run(RELEASE);
    if (digitalRead(buttonPin) == LOW) { cancelSong(); return; }
    tapTail(870);
    tail->run(FORWARD);
    delay(435);
    tail->run(RELEASE);
    delay(335);
    if (digitalRead(buttonPin) == LOW) { cancelSong(); return; }
    head->run(FORWARD);
    delay(250);
    talk(550);                  // Don't
    talk(300);                  // wo
    talk(300);                  // rry
    delay(100);
    talk(500);                  // Be
    talk(300);                  // ha
    talk(300);                  // ppy...
    delay(200);
    head->run(RELEASE);
  }
  digitalWrite(customSpeakerControlPin, LOW);
  digitalWrite(auxVolumeControlPin, HIGH);
}

// Movements assigned to the song Take Me To The River, does alexa wake and button press checks
void takeMeToTheRiver() {
  digitalWrite(customSpeakerControlPin, HIGH);
  digitalWrite(auxVolumeControlPin, LOW);
  playSDSound(TAKE_ME_TO_THE_RIVER);
  if (digitalRead(toggleMovementPin) == LOW) {
    delay(4200);
    for (int i = 0; i < 19; i++) {
      if (digitalRead(buttonPin) == LOW) { cancelSong(); return; }
      delay(1400);
    }
  } else {
    delay(200);
    for (int i = 0; i < 7; i++) {
      tapTail(600);
    }
    if (digitalRead(buttonPin) == LOW) { cancelSong(); return; }
    head->run(FORWARD);
    talk(600);                  // I
    talk(200);                  // wa
    talk(200);                  // nna
    talk(400);                  // know
    if (digitalRead(buttonPin) == LOW) { cancelSong(); return; }
    delay(400);
    talk(200);                  // can
    talk(200);                  // you
    talk(400);                  // help
    talk(500);                  // me
    if (digitalRead(buttonPin) == LOW) { cancelSong(); return; }
    delay(600);
    talk(500);                  // I
    talk(700);                  // love
    talk(200);                  // to
    if (digitalRead(buttonPin) == LOW) { cancelSong(); return; }
    runMotorCycle(mouth, 2800); // stay
    if (digitalRead(buttonPin) == LOW) { cancelSong(); return; }
    delay(185);
    for (int i = 0; i < 4; i++) {
      head->run(FORWARD); 
      talk(700);                  // Take   /   Drop / Put
      talk(300);                  // me         me
      talk(200);                  // to         in
      talk(200);                  // the        the
      talk(600);                  // ri         wa
      runMotorCycle(mouth, 500);  // ver        ter
      if (digitalRead(buttonPin) == LOW) { cancelSong(); return; }
      head->run(RELEASE);
      delay(185);
      tapTail(600);
      tapTail(550);
      if (digitalRead(buttonPin) == LOW) { cancelSong(); return; }
      if (i < 3) {
        tail->run(FORWARD);
        delay(100);
        tail->run(RELEASE);
      }
    }
    tapTail(600);
    tapTail(600);
    delay(500);
  }
  digitalWrite(customSpeakerControlPin, LOW);
  digitalWrite(auxVolumeControlPin, HIGH);
}

// Wiggles the tail back and forth the specified number of times
void squirmTail(const uint8_t numIterations = 5) {
  for (uint8_t i = 0; i < numIterations; i++) {
    runMotorLongCycle(tail, 200);
  }
}

// Opens the mouth then moves the head slowly
void gasp(const uint16_t lookDelay = 2000) {
  mouth->run(FORWARD);
  delay(500);
  runMotorCycle(head, lookDelay);
  resetMotor(mouth);
}

// Moves the head forward and then back slowly
void annoyedStare(const uint16_t stareDelay = 2500) {
  head->run(FORWARD);
  delay(stareDelay);
  head->run(BACKWARD);
  delay(5);
  head->run(RELEASE);
}

// Plays a custom audio file while moving billy accordingly
void playCustomAudio(const Sound sound) {
  switch ((int)sound) {
  case 1: sneeze(); break;
  case 2: dontWorryBeHappy(); break;
  case 3: takeMeToTheRiver(); break;
  default: playSDSound(sound); break;
  }
}
