#include <Keyboard.h>

/* Keyboard.h Library
 * 
 * Commands
 * Keyboard.begin():
 * - Initializes USB communication
 * - Registers this device as an HID device
 * Keyboard.end():
 * - Disables keyboard emulation and communication
 * - Resets all internal key states
 * - Has the same effect as physically removing the keyboard
 * Keyboard.press(key):
 * - Sends a key press report for the respective key
 * - Does not release the key automatically
 * - Note: the host does the multi key processing
 * - Input: byte for the key pressed
 * Keyboard.release(key):
 * - Sends a key release report for a key that was previously reported as a press
 * - Input: bype for the key released
 * Keyboard.releaseAll():
 * - Releases all keys currently reported as pressed
 * Keyboard.write(key):
 * - Internally runs .press() and .release() for the respective key
 * - Input: byte for the key
 * Keyboard.print(string):
 * - Reports a string as if it were pressed on a physical keyboard
 * Keyboard.println(string):
 * - Runs .print() and appends a new line / return after
 * 
 * For standard key arguments use the symbol enclosed in single quotes eg. 'a'
 *
 * Predefined Key Constants:
 * - KEY_RETURN: Enter
 * - KEY_TAB
 * - KEY_BACKSPACE
 * - KEY_ESC
 * - KEY_UP_ARROW
 * - KEY_DOWN_ARROW
 * - KEY_LEFT_ARROW
 * - KEY_RIGHT_ARROW
 * - KEY_LEFT_CTRL
 * - KEY_LEFT_SHIFT
 * - KEY_LEFT_ALT
 * - KEY_LEFT_GUI: Left GUI (Windows/Command) key
 * - KEY_RIGHT_CTRL
 * - KEY_RIGHT_SHIFT
 * - KEY_RIGHT_ALT
 * - KEY_RIGHT_GUI: Right GUI (Windows/Command) key
 * - KEY_DELETE
 * - KEY_PAGE_UP
 * - KEY_PAGE_DOWN
 * - KEY_HOME
 * - KEY_END
 * - KEY_F1 - KEY_F12
 */

 // For artificial typing (.write() over and over) add a 
 // 10-50 ms delay between key presses to ensure host can handle all the requests
 // >50ms can become noticable

 // 420 words/minute is the fastest typing speed
 // = <= 40 letters per second
 // go with ~25ms delay between key presses

void setup() {
  // Initialize HID keyboard 
  Keyboard.begin();
}

void loop() {
  // Test various aspects to ensure it's working properly

  // Initial delay 
  delay(5000);

  /*
  // Backlight Test
  for(int duty = 0; duty <= 128; duty += 5) {
    analogWrite(3, duty);
    delay(100);
  }
  for(int duty = 128; duty >= 0; duty -= 5) {
    analogWrite(3, duty);
    delay(100);
  }
  */

  // Press a key and release it
  Keyboard.press('a');
  delay(100);
  Keyboard.release('a');
  delay(500);

  // Press multiple keys 
  Keyboard.press(KEY_LEFT_SHIFT);
  delay(50);
  Keyboard.press('l');
  delay(25);
  Keyboard.release('l');
  delay(100);
  Keyboard.press('6');
  delay(25);
  Keyboard.releaseAll();
  delay(500);

  // Write a key explicitly
  Keyboard.write('4');
  delay(500);

  // Write a sentence explicitly
  //Keyboard.print("Hey there!");
  //delay(500);
  // .print can take a while, seems to have a longer delay than 25ms

  // space
  Keyboard.write(' ');

  // Test artificial typing and greek Unicode input
  // Unicode character codes by language: https://unicode.org/charts/
  // Can forgo the leading 0

  // lowercase alpha
  Keyboard.press('0');
  delay(25);
  Keyboard.release('0');
  delay(10);
  Keyboard.press('3');
  delay(25);
  Keyboard.release('3');
  delay(10);
  Keyboard.press('b');
  delay(25);
  Keyboard.release('b');
  delay(10);
  Keyboard.press('1');
  delay(25);
  Keyboard.release('1');
  delay(10);
  Keyboard.press(KEY_LEFT_ALT);
  delay(25);
  Keyboard.press('x');
  delay(25);
  Keyboard.releaseAll();
  delay(1000);

  // uppercase delta
  //Keyboard.write('0');
  //Keyboard.write('3');
  //Keyboard.write('9');
  //Keyboard.write('4');
  //Keyboard.press(KEY_LEFT_ALT);
  //delay(50);
  //Keyboard.press('x');
  //delay(25);
  //Keyboard.releaseAll();
  //delay(500);
  // Gets hungup on .write()

  Keyboard.press('3');
  delay(25);
  Keyboard.release('3');
  delay(10);
  Keyboard.press('9');
  delay(25);
  Keyboard.release('9');
  delay(10);
  Keyboard.press('4');
  delay(25);
  Keyboard.release('4');
  delay(10);
  Keyboard.press(KEY_LEFT_ALT);
  delay(25);
  Keyboard.press('x');
  delay(25);
  Keyboard.releaseAll();
  delay(1000);
  // Need to use the individual .press() and .release() functions

  // Speed test with degree sign
  Keyboard.press('0');
  delay(25);
  Keyboard.release('0');
  delay(10);
  Keyboard.press('b');
  delay(25);
  Keyboard.release('b');
  delay(10);
  Keyboard.press('0');
  delay(25);
  Keyboard.release('0');
  delay(10);
  Keyboard.press(KEY_LEFT_ALT);
  delay(25);
  Keyboard.press('x');
  delay(25);
  Keyboard.releaseAll();
  delay(1000);

  Keyboard.press('b');
  delay(10);
  Keyboard.release('b');
  delay(10);
  Keyboard.press('0');
  delay(10);
  Keyboard.release('0');
  delay(10);
  Keyboard.press(KEY_LEFT_ALT);
  delay(10);
  Keyboard.press('x');
  delay(10);
  Keyboard.releaseAll();
  delay(1000);

  Keyboard.press('0');
  delay(10);
  Keyboard.release('0');
  Keyboard.press('b');
  delay(10);
  Keyboard.release('b');
  Keyboard.press('0');
  delay(10);
  Keyboard.release('0');
  Keyboard.press(KEY_LEFT_ALT);
  delay(10);
  Keyboard.press('x');
  delay(10);
  Keyboard.releaseAll();
  delay(1000);

  // Super speed test with final sigma
  for (int i = 0; i < 10; i++) {
    Keyboard.press('3');
    delay(10);
    Keyboard.release('3');
    Keyboard.press('c');
    delay(10);
    Keyboard.release('c');
    Keyboard.press('2');
    delay(10);
    Keyboard.release('2');
    Keyboard.press(KEY_LEFT_ALT);
    delay(10);
    Keyboard.press('x');
    delay(10);
    Keyboard.releaseAll();
    delay(10);
    // Note: crashed with no delays
    // Note: still crashed with only delay between loops
    // Note: doesn't crash with 10ms delays between presses
  }

  for (int i = 0; i < 10; i++) {
    Keyboard.press('3');
    delay(15);
    Keyboard.release('3');
    Keyboard.press('c');
    delay(15);
    Keyboard.release('c');
    Keyboard.press('8');
    delay(15);
    Keyboard.release('8');
    Keyboard.press(KEY_LEFT_ALT);
    delay(15);
    Keyboard.press('x');
    delay(15);
    Keyboard.releaseAll();
    delay(100);
    // Note: 25ms too slow when converting to Unicode
  }
  delay(1000);

  // Will use 10-15ms delays between Unicode keys

  // Testing adding greek accent
  Keyboard.press('3');
  delay(10);
  Keyboard.release('3');
  Keyboard.press('0');
  delay(10);
  Keyboard.release('0');
  Keyboard.press('1');
  delay(10);
  Keyboard.release('1');
  Keyboard.press(KEY_LEFT_ALT);
  delay(10);
  Keyboard.press('x');
  delay(10);
  Keyboard.releaseAll();
  delay(500);

  Keyboard.press('3');
  delay(10);
  Keyboard.release('3');
  Keyboard.press('c');
  delay(10);
  Keyboard.release('c');
  Keyboard.press('a');
  delay(10);
  Keyboard.release('a');
  Keyboard.press(KEY_LEFT_ALT);
  delay(10);
  Keyboard.press('x');
  delay(10);
  Keyboard.releaseAll();
  delay(500);

  // Doesn't quite work, will need to internally test if accent is pressed and then send alternate Unicode
  

}