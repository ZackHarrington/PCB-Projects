// Additional files (.h includes) act like appendages to the code where they are included
// Meaning by including Log.h first, all other files can use the log functions
#include "Log.h"
#include "SDCardFunctions.h"
#include "BillyFunctions.h"
#include "DataPinFunctions.h"
#include "BluetoothFunctions.h"


// -- Button press objects
byte lastButtonState = HIGH;
uint8_t numButtonPresses = 0;
uint32_t lastButtonPress = 0;
uint32_t lastButtonRelease = 0;

// -- Bluetooth objects
uint16_t bluetoothDelay = 0;
uint32_t lastBluetoothPop = 0;

// -- Audio objects
uint8_t audioOffCounter = 0;


// -- Action Functions
// Puts billy to sleep
void sleep() {
  sleepMotors();
  numButtonPresses = 0;
  audioOffCounter = 0;
  digitalWrite(alexaSpeakerControlPin, LOW);
  digitalWrite(customSpeakerControlPin, LOW);
  billyStatus = SLEEPING;
}

// Detects when billy should talk
void singCheck() {
  float stdev = 0, sum = 0;
  sampleAnalogPin(audioVoltagePin, 32, 32, &stdev);  

  // Check for no more audio
  if (billyStatus != ACTIVE_ALEXA) {
    if (stdev < 2) {
      audioOffCounter++;
      if (audioOffCounter > 50) {
        sleep();
        return;
      }
    } else {
      audioOffCounter = 0;
    }
  }

  // Should we be doing movement?
  if (digitalRead(toggleMovementPin) == LOW || digitalRead(buttonPin) == LOW)
    return;
  
  if (stdev > 5) {
    tail->run(RELEASE);
    if (stdev < 6) {
      talk(500);
    } else if (stdev < 8) {
      talk(350);
    } else {
      talk();
    }
  } else if (stdev > 2) {
    tapTail();
  }
}

// Plays one of the original songs when the button is held down
void buttonHold() {
  if (random(0, 2) == 0)
    takeMeToTheRiver();
  else
    dontWorryBeHappy();
}

// Does an animation based on the number of button presses
void buttonPress(const uint8_t numPresses) {
  if (numPresses > 100) { logInputError(F("buttonPress"), F("numPresses"), (int)numPresses); }

  if (numPresses > 0) {
    numButtonPresses++;
    if (numPresses > 90) {
      numButtonPresses = 0;
      return;
    } else if (numPresses > 30) {
      delay(1000);
      return;
    } else {
      angerBilly(numPresses);
    }
    return;
  }

  switch(random(0, 4)) {
    case 0: sneeze(); break;
    case 1: squirmTail(); break;
    case 2: annoyedStare(); break;
    case 3: gasp(); break;
    //case 4: funFact(); break;
    //case 5: angerBilly(1); numButtonPresses = 1; break;
    default: logError(F("Random returned an invalid value")); break;
  }
}

// Does the command, should be pre-verified
void executeCommand(Action* action) {
  Adafruit_DCMotor *motor = NULL;

  if (action->command[0] == 'a') {
    digitalWrite(auxVolumeControlPin, LOW);
    digitalWrite(customSpeakerControlPin, HIGH);
    uint8_t audioFileNumber = (action->command[1] - '0') * 10 + (action->command[2] - '0');
    playCustomAudio((Sound)audioFileNumber);
  } else if (action->command[0] == 'b') {
    uint8_t numPresses = (action->command[1] - '0') * 10 + (action->command[2] - '0');
    buttonPress(numPresses);
  } else if (action->command[0] == 'c') {
    int value = LOW;
    if (action->command[2] == 'h') { value = HIGH; }
    if (action->command[1] == 'a') { digitalWrite(alexaSpeakerControlPin, value); }
    else if (action->command[1] == 'c') { digitalWrite(customSpeakerControlPin, value); }
    else if (action->command[1] == 'v') { digitalWrite(auxVolumeControlPin, value); }
  } else if (action->command[0] == 'h') {
    motor = head;
  } else if (action->command[0] == 'm') {
    motor = mouth;
  } else if (action->command[0] == 't') {
    motor = tail;
  }

  if (motor == NULL) { return; }
  
  if (action->command[1] == 'c') {
    runMotorCycle(motor, action->delayTime);
  } else if (action->command[1] == 'f') {
    motor->run(FORWARD);
    delay(action->delayTime);
  } else if (action->command[1] == 'l') {
    runMotorLongCycle(motor, action->delayTime);
  } else {
    motor->run(RELEASE);
    delay(action->delayTime);
  }
}

// Deletes the current queue and begin listening for audio
void alexaWake() {
  // Delete queue
  commandQueue.flush();
  numButtonPresses = 0;
  audioOffCounter = 0;

  // Enable alexa audio
  digitalWrite(alexaSpeakerControlPin, HIGH);
  digitalWrite(customSpeakerControlPin, LOW);
  digitalWrite(auxVolumeControlPin, HIGH);

  // Move head to show alexa wake was activated
  head->run(FORWARD);
}

// Checks the wake pin differently depending on if audio is playing, returns 1 if a wake happened
byte alexaWakeCheck(int audioOn) {
  uint16_t alexaWakeVal = 0;
  if (!audioOn) {
    alexaWakeVal = sampleAnalogPin(alexaWakePin, 10, 150);
  } else {
    uint16_t sum = 0;
    uint16_t values[10];
    for (uint8_t i = 0; i < 10; i++) {
      values[i] = analogRead(alexaWakePin);
      sum += values[i];
      singCheck();
      delay(5);
    }
    alexaWakeVal = (sum / 10);
  }

  // ~340 is the yellow notification light, ~400 is no light, ~300 is a wake / blue light
  if (alexaWakeVal < 330) {
    alexaWake();
    return 1;
  }
  return 0;
}

// Checks if the audio pin is fluctuating more than just noise, returns 1 if there is audio
byte audioCheck() {
  float stdev = 0;
  sampleAnalogPin(audioVoltagePin, 10, 50, &stdev);
  if (stdev > 2) {
    digitalWrite(alexaSpeakerControlPin, HIGH);
    digitalWrite(auxVolumeControlPin, HIGH);
    return 1;
  }
  return 0;
}

// Checks inputs that could cause Billy to enter the ACTIVE state
void sleepCheck() {
  // Alexa wake check
  if (alexaWakeCheck(false)) {
    billyStatus = ACTIVE_ALEXA;
    return;
  }

  // Audio check
  if (audioCheck()) {
    billyStatus = ACTIVE_AUDIO;
    return;
  }
  
  // Bluetooth check
  if (checkForBluetoothCommands()) {
    billyStatus = ACTIVE_AUDIO;
    return;
  }
  
  // Button check
  if (digitalRead(buttonPin) == LOW && lastButtonState == HIGH) {
    // Press
    lastButtonState = LOW;
    lastButtonPress = millis();
    return;
  } else if (digitalRead(buttonPin) == LOW) {
    // Hold
    if (millis() - lastButtonPress > 3000) {
      lastButtonState = HIGH;
      buttonHold();
    }
    return;
  } else if (digitalRead(buttonPin) == HIGH && lastButtonState == LOW) {
    // Release
    lastButtonState = HIGH;
    lastButtonRelease = millis();
    billyStatus = ACTIVE_BUTTON;
    buttonPress(0);
    return;
  }

}


// -- Arduino Functions
void setup() {
  Serial.begin(9600);
  Serial.println(F("BEGINNING INITIALIZATION"));
  Serial.println(F("-- Setting up fish motors ..."));
  setupFishMotors();
  Serial.println(F("-- ... fish motors are setup!"));
  Serial.println(F("-- Setting up digital IO pins ..."));
  pinMode(buttonPin, INPUT_PULLUP);
  pinMode(toggleMovementPin, INPUT_PULLUP);
  pinMode(alexaSpeakerControlPin, OUTPUT);
  pinMode(customSpeakerControlPin, OUTPUT);
  pinMode(auxVolumeControlPin, OUTPUT);
  digitalWrite(alexaSpeakerControlPin, LOW);
  digitalWrite(customSpeakerControlPin, LOW);
  digitalWrite(auxVolumeControlPin, LOW);
  Serial.println(F("-- Connecting to SD card ..."));
  byte success = setupSDForAudio(customAudioOutPin);
  if (!success) {
    logError(F("Failed to connect to SD card"));
  }
  Serial.println(F("-- ... SD card communication established!"));
  Serial.println(F("-- ... digital IO pins are setup!"));
  Serial.println(F("-- Setting up bluetooth serial ..."));
  setupBluetoothSerial();
  Serial.println(F("-- ... bluetooth serial is setup!"));
  Serial.println(F("-- Testing fish motors ..."));
  testFishMotors();
  Serial.println(F("-- ... fish motors test complete!"));
  digitalWrite(customSpeakerControlPin, HIGH);
  Serial.println(F("-- Testing SD card connection ..."));
  testSDForAudio();
  Serial.println(F("-- ... SD card test complete!"));
  digitalWrite(auxVolumeControlPin, HIGH);
  Serial.println(F("INITIALIZATION COMPLETE"));

  sleep();
}


void loop() {

  // Precidence:
  // 1. Alexa wake word
  // 2. Bluetooth command
  // 3. Alexa/Bluetooth music
  // 4. Button Press
  // Motor control is dependent on any of the above

  /* 1  2  3  4
   * T  F  F  F  Alexa wake - set speaker on, aux control to on, begin awaiting audio signal, delete queue
   * T  T  T  T  All will be ignored when alexa wake is active
   * T  T  T  F   |
   * T  T  F  T   |
   * T  T  F  F   |
   * T  F  T  T   |
   * T  F  T  F   |
   * T  F  F  T  \_/

   * F  T  F  F  Bluetooth command - Do command, may require overriding other things that are happening
   * F  T  T  T  Button will quiet the audio coming in
   * F  T  T  F  Aux may be dimmed or turned off depending on the command
   * F  T  F  T  

   * F  F  T  F  Music playing - continue doing the music routine
   * F  F  T  T  Button will quiet the audio coming in

   * F  F  F  T  Button press - the only time a button press will be used for anything other than lowering the volume
   * ACTIVE /\
   * ACTIVE and SLEEPING will only be changed if one of the others truth values occur
   * SLEEPING \/
   * F  F  F  F  All off - set sleeping (speaker off) / power saving mode
   */

  
  if (billyStatus == INITIALIZING)
    logError(F("Status set to INITIALIZING in loop"));

  if (billyStatus == SLEEPING) {
    // Billy is sleeping and checks less frequently
    delay(250);
    sleepCheck();
  } else {
    // Bluetooth check
    checkForBluetoothCommands();
    if (!commandQueue.isEmpty()) {
      Action action;
      if (millis() > lastBluetoothPop + bluetoothDelay && popAndVerifyAction(&action)) {
        executeCommand(&action);
      }
    }
    
    if (billyStatus == ACTIVE_AUDIO || billyStatus == ACTIVE_ALEXA) {
      if (billyStatus == ACTIVE_ALEXA && sampleAnalogPin(alexaWakePin, 10, 50) > 350) {
        billyStatus = ACTIVE_AUDIO;
        head->run(RELEASE);
        delay(100);
      } else if (billyStatus == ACTIVE_AUDIO && alexaWakeCheck(true)) {
        billyStatus = ACTIVE_ALEXA;
      }

      // Button check
      if (digitalRead(buttonPin) == LOW) { digitalWrite(alexaSpeakerControlPin, LOW); }
      else { digitalWrite(alexaSpeakerControlPin, HIGH); }

      // Audio check
      singCheck();
    } 
    // ACTIVE_BUTTON
    else {
      if (millis() - lastButtonRelease > 10000)
        sleep();
    
      if (digitalRead(buttonPin) == LOW && lastButtonState == HIGH) {
        // Press
        lastButtonState = LOW;
        lastButtonPress = millis();
      } else if (digitalRead(buttonPin) == LOW) {
        // Hold
        if (millis() - lastButtonPress > 3000) {
          lastButtonState = HIGH;
          buttonHold();
        }
      } else if (digitalRead(buttonPin) == HIGH && lastButtonState == LOW) {
        // Release
        lastButtonState = HIGH;
        lastButtonRelease = millis();
        buttonPress(numButtonPresses);
      }

      // Alexa check
      if(alexaWakeCheck(false))
        billyStatus = ACTIVE_ALEXA;

      // Audio check
      if(audioCheck())
        billyStatus = ACTIVE_AUDIO;
    }
  }
  
}
