// Serial must be at 9600 to communicate with the HC-06 module (default)
// Commands should be sent as 7 character strings followed by a null character '\0'
// Send the delay in milliseconds as the first 4 characters
// When playing a custom sound be sure to send a command to turn back on the audio pin if necessary, and off the speaker
#include <SoftwareSerial.h>
#include <cppQueue.h>

/* Billy Commands:
 *  - First character
 *   - Second character
 *    - Third character
 *     - Fourth is the null character \0
 *  
 *  - \0: null command simply used as a delay
 *  - a: play a custom audio sound (moves the motors as specified by the sound)
 *   - 2 digit number coorelating to the custom sound 
 *  - b: calls the button_press function 
 *   - 2 digit number coorelating to the number of button presses
 *  - c: set a control pin
 *   - a: alexa speaker pin
 *   - c: custom speaker pin
 *   - v: aux volume pin
 *    - h: set high
 *    - l: set low
 *  - h: move head (queue delays are used for how long to run the motor)
 *  - m: move mouth
 *  - t: move tail
 *   - r: release
 *   - c: short cycle
 *   - f: forward
 *   - l: long cycle
 */
typedef struct billyAction {
  uint16_t  delayTime;
  char      command[4];
} Action;


// -- Bluetooth objects
SoftwareSerial cmdSerial(3, 5); // RX, TX
cppQueue commandQueue(sizeof(Action), 10, FIFO);
char BTCommand[8];



// -- Action Functions
// Pops an action from the queue and verifies that it is valid, returns 1 if successfully verified
byte popAndVerifyAction(Action* action) {
  if (commandQueue.isEmpty()) {
    return 0;
  }
  commandQueue.pop(action);

  // Verify the delay is less than 5 seconds
  if (action->delayTime > 5000) {
    return popAndVerifyAction(action);
  }
  
  // Verify the command is infact a command
  if (action->command[0] == '\0') { return 1; }
  else if (action->command[0] == 'a' || action->command[0] == 'b') {
    int num1 = action->command[1] - '0';
    int num2 = action->command[2] - '0';
    if (num1 >= 0 && num2 >= 0 && num1 <= 9 && num2 <= 9) { return 1; }
  }
  else if (action->command[0] == 'c') {
    if ((action->command[1] == 'a' || action->command[1] == 'c' || action->command[1] == 'v') &&
    (action->command[2] == 'h' || action->command[2] == 'l')) { return 1; }
  }
  else if (action->command[0] == 'h' || action->command[0] == 'm' || action->command[0] == 't') {
    if (action->command[1] == 'c' || action->command[1] == 'f' || 
        action->command[1] == 'l' || action->command[1] == 'r') { return 1; }
  }
  
  return popAndVerifyAction(action);
}


// -- Bluetooth Functions
// Begins the software serial connection to the HC-06
void setupBluetoothSerial() {
  cmdSerial.begin(9600);
  for (int i = 0; i < 0; i++) {
    BTCommand[i] = '\0';
  }
}

// Checks buffer for a command, returns 1 for a successfully received command
byte checkForBluetoothCommands() { 
  if (commandQueue.isFull()) { return 0; }
   
  int bluetoothData = -1;
  while (cmdSerial.available()) {
    for (int i = 0; i < 8; i++) {
      if (cmdSerial.available() > 0) {
        bluetoothData = cmdSerial.read();
        BTCommand[i] = (char)bluetoothData;
        delay(100);
      } else {
        return 0;
      }
    }
  
    if (BTCommand[0] >= '0' && BTCommand[0] <= '9' && BTCommand[1] >= '0' && BTCommand[1] <= '9' &&
        BTCommand[2] >= '0' && BTCommand[2] <= '9' && BTCommand[3] >= '0' && BTCommand[3] <= '9') {
      uint16_t delayTime = (BTCommand[0] - '0') * 1000 + (BTCommand[1] - '0') * 100 +
                            (BTCommand[2] - '0') * 10 + (BTCommand[3] - '0');
      Action action = {delayTime, {BTCommand[4], BTCommand[5], BTCommand[6], BTCommand[7]}};
      commandQueue.push(&action);

      cmdSerial.write(F("Command Received"));
      if (commandQueue.isFull()) { return 1; }
      delay(100);
    }
  }

  return ((bluetoothData == -1) ? 0 : 1);
}
