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
 * 
 * Estimated Delay
 * >50ms noticable
 * 0 delay causes a crash
 * Goal: 47.6 ms/letter
 * - Fastest typing speed: 420 words/min
 * - Most common word length: 3 letters
 * - 420 words/min * 3 letters/word / 60 s/min = 21 letters/s
 * - 6-7 inputs needed per Unicode character
 * Use 5 ms/input 
 * - ~35 ms/letter = ~28.5 letters/s max = ~571 words/min max
 *
 * Unicode character codes by language: https://unicode.org/charts/
 */

 /* Arduino Leonardo (ATmega32u4) PWM
  * 
  * Analog write on a digital pin will outputs a PWM signal
  * - analogWrite(pin, duty)
  * - duty: duty cycle from 0-255
  * 
  * Frequencies:
  * Pins 3 and 11 - 980Hz
  * Pins 5, 6, 9, and 10 - 480Hz
  */

#define PRO_MICRO

#ifndef PRO_MICRO
#define PIN_ROW1 1  //PD3
#define PIN_ROW2 4  //PD4
#define PIN_ROW3 12 //PD6
#define PIN_ROW4 6  //PD7
#define PIN_ROW5 8  //PB4

#define PIN_COL1 5  //PC6
#define PIN_COL2 10 //PB6
#define PIN_COL3 9  //PB5
#define PIN_COL4 0  //PD2
#define PIN_COL5 3  //PD0
#define PIN_COL6 2  //PD1

#define PIN_BACKLIGHT 11 //PB7

#else

#define PIN_ROW1 15 //PB1 
#define PIN_ROW2 4  //PD4 
#define PIN_ROW3 5  //PC6 
#define PIN_ROW4 6  //PD7 
#define PIN_ROW5 7  //PE6 

#define PIN_COL1 14 //PB3 
#define PIN_COL2 10 //PB6 
#define PIN_COL3 16 //PD2  
#define PIN_COL4 9  //PB5  
#define PIN_COL5 8  //PB4 
#define PIN_COL6 2  //PD1  

#define PIN_BACKLIGHT 3 //PD0

#endif //PRO_MICRO

#define NUM_ROWS 5
#define NUM_COLS 6
//#define SINGLE_SHIFT
#define SHIFT_INDEX 24 //SW25 - 1

#ifdef SINGLE_SHIFT
#define NUM_SWITCHES 29
#else 
#define NUM_SWITCHES 30
#endif //SINGLE_SHIFT

#define BACKLIGHT_FADE_TIME_MS 1000
#define BACKLIGHT_FADE_AFTER_S 8
#define BACKLIGHT_DUTY_MAX 128

// Row and column arrays for indexing
int rows[NUM_ROWS] = {PIN_ROW1, PIN_ROW2, PIN_ROW3, PIN_ROW4, PIN_ROW5};
int cols[NUM_COLS] = {PIN_COL1, PIN_COL2, PIN_COL3, PIN_COL4, PIN_COL5, PIN_COL6};

// State of each key switch
bool pressed[NUM_SWITCHES] = {false};
bool next_pressed[NUM_SWITCHES] = {0};

// Backlight fade timer variables
long last_release_millis = 0;
long backlight_last_update_millis = 0;
int backlight_duty = 0;
bool backlight_rising = false;
bool keep_rising = false;


// Send HID Function
/* Description:
 * - Sends the specified Unicode sequence followed by ALT + x to natively convert it
 * Parameters:
 * - unicode_sequence: 4 character Unicode sequence to send
 */
void sendHIDCommand(char* unicode_sequence) {
  // Send Unicode sequence
  for(int i = 0; i < 4; i++) {
    // Use .press() and .release(), .write() gets hung up at delays <25ms
    Keyboard.press(unicode_sequence[i]);
    delay(5);
    Keyboard.release(unicode_sequence[i]);
  }
  
  // Send ALT + x to natively convert the sequence
  Keyboard.press(KEY_LEFT_ALT);
  delay(5);
  Keyboard.press('x');
  delay(5);
  Keyboard.releaseAll();
  delay(5);
}

// Send Key Function
/* Description:
 * - Maps the pressed keys to the correct Unicode character, and then calls to send the HID command
 * Parameters:
 * - key: index of key pressed
 * - accent: index (0-2) of accent pressed, -1 indicates none
 * - shift: is SHIFT pressed?
 * - accent_shift: for double shift, is accent shift pressed?
 */
void sendKey(int key, int accent, bool shift, bool accent_shift) {
  char key_unicode[4];

  // Find Greek Character
  if (!shift) {
    // Find lowercase letters
    switch (key) {
      case 0: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = 'B'; key_unicode[3] = '1'; break; // alpha α
      case 1: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = 'B'; key_unicode[3] = '2'; break; // beta β
      case 2: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = 'B'; key_unicode[3] = '3'; break; // gamma γ
      case 3: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = 'B'; key_unicode[3] = '4'; break; // delta δ
      case 4: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = 'B'; key_unicode[3] = '5'; break; // epsilon ε
      case 5: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = 'B'; key_unicode[3] = '6'; break; // zeta ζ
      case 6: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = 'B'; key_unicode[3] = '7'; break; // eta η
      case 7: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = 'B'; key_unicode[3] = '8'; break; // theta θ
      case 8: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = 'B'; key_unicode[3] = '9'; break; // iota ι
      case 9: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = 'B'; key_unicode[3] = 'A'; break; // kappa κ
      case 10: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = 'B'; key_unicode[3] = 'B'; break; // lambda λ
      case 11: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = 'B'; key_unicode[3] = 'C'; break; // mu μ
      case 12: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = 'B'; key_unicode[3] = 'D'; break; // nu ν
      case 13: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = 'B'; key_unicode[3] = 'E'; break; // xi ξ
      case 14: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = 'B'; key_unicode[3] = 'F'; break; // omicron ο
      case 15: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = 'C'; key_unicode[3] = '0'; break; // pi π
      case 16: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = 'C'; key_unicode[3] = '1'; break; // rho ρ
      case 17: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = 'C'; key_unicode[3] = '3'; break; // sigma σ
      case 18: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = 'C'; key_unicode[3] = '4'; break; // tau τ
      case 19: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = 'C'; key_unicode[3] = '5'; break; // upsilon υ
      case 20: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = 'C'; key_unicode[3] = '6'; break; // phi φ
      case 21: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = 'C'; key_unicode[3] = '7'; break; // chi χ
      case 22: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = 'C'; key_unicode[3] = '8'; break; // psi ψ
      case 23: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = 'C'; key_unicode[3] = '9'; break; // omega ω
      case NUM_SWITCHES - 1: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = 'C'; key_unicode[3] = '2'; break; // final sigma ς
      default: break;
    }
  } else {
    // Find uppercase letters
    switch (key) {
      case 0: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = '9'; key_unicode[3] = '1'; break; // Alpha Α
      case 1: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = '9'; key_unicode[3] = '2'; break; // Beta Β
      case 2: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = '9'; key_unicode[3] = '3'; break; // Gamma Γ
      case 3: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = '9'; key_unicode[3] = '4'; break; // Delta Δ
      case 4: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = '9'; key_unicode[3] = '5'; break; // Epsilon Ε
      case 5: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = '9'; key_unicode[3] = '6'; break; // Zeta Ζ
      case 6: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = '9'; key_unicode[3] = '7'; break; // Eta Η
      case 7: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = '9'; key_unicode[3] = '8'; break; // Theta Θ
      case 8: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = '9'; key_unicode[3] = '9'; break; // Iota Ι
      case 9: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = '9'; key_unicode[3] = 'A'; break; // Kappa Κ
      case 10: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = '9'; key_unicode[3] = 'B'; break; // Lambda Λ
      case 11: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = '9'; key_unicode[3] = 'C'; break; // Mu Μ
      case 12: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = '9'; key_unicode[3] = 'D'; break; // Nu Ν
      case 13: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = '9'; key_unicode[3] = 'E'; break; // Xi Ξ
      case 14: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = '9'; key_unicode[3] = 'F'; break; // Omicron Ο
      case 15: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = 'A'; key_unicode[3] = '0'; break; // Pi Π
      case 16: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = 'A'; key_unicode[3] = '1'; break; // Rho Ρ
      case 17: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = 'A'; key_unicode[3] = '3'; break; // Sigma Σ
      case 18: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = 'A'; key_unicode[3] = '4'; break; // Tau Τ
      case 19: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = 'A'; key_unicode[3] = '5'; break; // Upsilon Υ
      case 20: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = 'A'; key_unicode[3] = '6'; break; // Phi Φ
      case 21: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = 'A'; key_unicode[3] = '7'; break; // Chi Χ
      case 22: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = 'A'; key_unicode[3] = '8'; break; // Psi Ψ
      case 23: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = 'A'; key_unicode[3] = '9'; break; // Omega Ω
      case NUM_SWITCHES - 1: key_unicode[0] = '0'; key_unicode[1] = '0'; key_unicode[2] = 'B'; key_unicode[3] = '0'; break; // degree °
      default: break;
    }
  }

  // If an accent was pressed, adjust the Unicode accordingly
  if (accent >= 0 && accent <= 2) {
    /* Chosen accent values:
     * 0 - diaeresis ¨
     * 1 - acute ´
     * 2 - smooth ᾿
     * 3 - circumflex ῀
     * 4 - grave `
     * 5 - rough ῾
     */
    int chosen_accent = 0;
    if (!accent_shift) {
      chosen_accent = accent;
    } else {
      chosen_accent = accent + 3;
    }

    // Apply accent to relevant characters
    if (key_unicode[0] == '0' && key_unicode[1] == '3' && key_unicode[2] == 'B' && key_unicode[3] == '1') { // alpha
      switch (chosen_accent) {
        case 1: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '7'; key_unicode[3] = '1'; break; 
        case 2: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '0'; key_unicode[3] = '0'; break;  
        case 3: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = 'B'; key_unicode[3] = '6'; break;  
        case 4: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '7'; key_unicode[3] = '0'; break;  
        case 5: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '0'; key_unicode[3] = '1'; break;  
        default: break;
      }
    } else if (key_unicode[0] == '0' && key_unicode[1] == '3' && key_unicode[2] == '9' && key_unicode[3] == '1') { // Alpha
      switch (chosen_accent) {
        case 2: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '0'; key_unicode[3] = '8'; break; 
        case 5: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '0'; key_unicode[3] = '9'; break;  
        default: break;
      }
    } else if (key_unicode[0] == '0' && key_unicode[1] == '3' && key_unicode[2] == 'B' && key_unicode[3] == '5') { // epsilon
      switch (chosen_accent) {
        case 1: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '7'; key_unicode[3] = '3'; break; 
        case 2: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '1'; key_unicode[3] = '0'; break;  
        case 4: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '7'; key_unicode[3] = '2'; break;  
        case 5: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '1'; key_unicode[3] = '1'; break;  
        default: break;
      }
    } else if (key_unicode[0] == '0' && key_unicode[1] == '3' && key_unicode[2] == '9' && key_unicode[3] == '5') { // Epsilon
      switch (chosen_accent) {
        case 2: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '1'; key_unicode[3] = '8'; break; 
        case 5: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '1'; key_unicode[3] = '9'; break;  
        default: break;
      }
    } else if (key_unicode[0] == '0' && key_unicode[1] == '3' && key_unicode[2] == 'B' && key_unicode[3] == '7') { // eta
      switch (chosen_accent) {
        case 1: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '7'; key_unicode[3] = '5'; break; 
        case 2: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '2'; key_unicode[3] = '0'; break;  
        case 3: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = 'C'; key_unicode[3] = '6'; break;  
        case 4: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '7'; key_unicode[3] = '4'; break;  
        case 5: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '2'; key_unicode[3] = '1'; break;  
        default: break;
      }
    } else if (key_unicode[0] == '0' && key_unicode[1] == '3' && key_unicode[2] == '9' && key_unicode[3] == '7') { // Eta
      switch (chosen_accent) {
        case 2: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '2'; key_unicode[3] = '8'; break; 
        case 5: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '2'; key_unicode[3] = '9'; break;  
        default: break;
      }
    } else if (key_unicode[0] == '0' && key_unicode[1] == '3' && key_unicode[2] == 'B' && key_unicode[3] == '9') { // iota
      switch (chosen_accent) {
        case 0: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = 'C'; key_unicode[3] = 'A'; break; 
        case 1: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '7'; key_unicode[3] = '7'; break;  
        case 2: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '3'; key_unicode[3] = '0'; break;  
        case 3: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = 'D'; key_unicode[3] = '6'; break;  
        case 4: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '7'; key_unicode[3] = '6'; break;  
        case 5: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '3'; key_unicode[3] = '1'; break;  
        default: break;
      }
    } else if (key_unicode[0] == '0' && key_unicode[1] == '3' && key_unicode[2] == '9' && key_unicode[3] == '9') { // Iota
      switch (chosen_accent) {
        case 0: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = 'A'; key_unicode[3] = 'A'; break; 
        case 2: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '3'; key_unicode[3] = '8'; break;  
        case 5: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '3'; key_unicode[3] = '9'; break;  
        default: break;
      }
    } else if (key_unicode[0] == '0' && key_unicode[1] == '3' && key_unicode[2] == 'B' && key_unicode[3] == 'F') { // omicron
      switch (chosen_accent) {
        case 1: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '7'; key_unicode[3] = '9'; break; 
        case 2: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '4'; key_unicode[3] = '0'; break;  
        case 4: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '7'; key_unicode[3] = '8'; break;  
        case 5: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '4'; key_unicode[3] = '1'; break;  
        default: break;
      }
    } else if (key_unicode[0] == '0' && key_unicode[1] == '3' && key_unicode[2] == '9' && key_unicode[3] == 'F') { // Omicron
      switch (chosen_accent) {
        case 2: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '4'; key_unicode[3] = '8'; break; 
        case 5: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '4'; key_unicode[3] = '9'; break;  
        default: break;
      }
    } else if (key_unicode[0] == '0' && key_unicode[1] == '3' && key_unicode[2] == 'C' && key_unicode[3] == '5') { // upsilon
      switch (chosen_accent) {
        case 0: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = 'C'; key_unicode[3] = 'B'; break; 
        case 1: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '7'; key_unicode[3] = 'B'; break;  
        case 2: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '5'; key_unicode[3] = '0'; break;  
        case 3: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = 'E'; key_unicode[3] = '6'; break;  
        case 4: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '7'; key_unicode[3] = 'A'; break;  
        case 5: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '5'; key_unicode[3] = '1'; break;  
        default: break;
      }
    } else if (key_unicode[0] == '0' && key_unicode[1] == '3' && key_unicode[2] == 'A' && key_unicode[3] == '5') { // Upsilon
      switch (chosen_accent) {
        case 0: key_unicode[0] = '0'; key_unicode[1] = '3'; key_unicode[2] = 'A'; key_unicode[3] = 'B'; break; 
        case 5: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '5'; key_unicode[3] = '9'; break; 
        default: break;
      }
    } else if (key_unicode[0] == '0' && key_unicode[1] == '3' && key_unicode[2] == 'C' && key_unicode[3] == '9') { // omega
      switch (chosen_accent) {
        case 1: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '7'; key_unicode[3] = 'D'; break;  
        case 2: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '6'; key_unicode[3] = '0'; break;  
        case 3: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = 'F'; key_unicode[3] = '6'; break;  
        case 4: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '7'; key_unicode[3] = 'C'; break;  
        case 5: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '6'; key_unicode[3] = '1'; break;  
        default: break;
      }
    } else if (key_unicode[0] == '0' && key_unicode[1] == '3' && key_unicode[2] == 'A' && key_unicode[3] == '9') { // Omega
      switch (chosen_accent) {
        case 2: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '6'; key_unicode[3] = '8'; break;  
        case 5: key_unicode[0] = '1'; key_unicode[1] = 'F'; key_unicode[2] = '6'; key_unicode[3] = '9'; break;  
        default: break;
      }
    }    
  }

  // Send the HID command
  sendHIDCommand(key_unicode);
}

// Valid Combination Function
/* Description:
 * - Checks pressed array and returns if the currently pressed keys are a valid key combination to send
 * Returns:
 * - false: multiple accents are pressed or no characters are pressed
 * - true: the currently pressed keys would be valid to send
 */
bool isValidCombination() {
  bool isValid = false;

  // Check if a character is pressed
  for(int i = 0; i < SHIFT_INDEX + 1; i++) {
    // Update sw index for degree / final sigma
    if (i == SHIFT_INDEX) {i = NUM_SWITCHES - 1;}

    if (pressed[i] == true) {
      isValid = true;
    }
  }

  // Check if multiple accents are pressed
  int num_pressed = 0;
  for(int i = NUM_SWITCHES - 1 - 3; i < NUM_SWITCHES - 1; i++) {
    if (pressed[i] == true) {
      num_pressed++;
      if (num_pressed > 1) {
        return false;
      }
    }
  }

  return isValid;
}


// --- Main ---
void setup() {
  // Initialize HID keyboard
  // Note that this does not validate the connection
  Keyboard.begin();

  // Initialize I/Os
  pinMode(PIN_ROW1, OUTPUT);
  pinMode(PIN_ROW2, OUTPUT);
  pinMode(PIN_ROW3, OUTPUT);
  pinMode(PIN_ROW4, OUTPUT);
  pinMode(PIN_ROW5, OUTPUT);
  pinMode(PIN_BACKLIGHT, OUTPUT);
  
  pinMode(PIN_COL1, INPUT);
  pinMode(PIN_COL2, INPUT);
  pinMode(PIN_COL3, INPUT);
  pinMode(PIN_COL4, INPUT);
  pinMode(PIN_COL5, INPUT);
  pinMode(PIN_COL6, INPUT);

  digitalWrite(PIN_ROW1, HIGH);
  digitalWrite(PIN_ROW2, HIGH);
  digitalWrite(PIN_ROW3, HIGH);
  digitalWrite(PIN_ROW4, HIGH);
  digitalWrite(PIN_ROW5, HIGH);

  // Pulse backlights to indicate connection
  for(int duty = 0; duty <= 130; duty += 5) {
    analogWrite(PIN_BACKLIGHT, duty);
    delay(50);
  }
  for(int duty = 130; duty >= 0; duty -= 5) {
    analogWrite(PIN_BACKLIGHT, duty);
    delay(50);
  }
}

void loop() {
  bool any_key_pressed = false;
  
  // Scan all matrix keys 
  for(int row = 0; row < NUM_ROWS; row++) {
    // Drive each row low
    digitalWrite(rows[row], LOW);
    delay(1);
    for(int col = 0; col < NUM_COLS; col++) {
      int index = row*6 + col;

#ifdef SINGLE_SHIFT
      if (row == 5) { 
        if (col == 2) {
          continue;
        } else if(col > 2) {
          index = index - 1;
        }
      }
#endif //SINGLE_SHIFT

      // Check each column
      int switch_state = digitalRead(cols[col]);
      // If low, switch has been pressed
      next_pressed[index] = !switch_state;
    }
    digitalWrite(rows[row], HIGH);
    delay(1);
  }

  // Check for released keys first - no interference if key is released when another is pressed
  for(int sw = 0; sw < NUM_SWITCHES; sw++) {
    if (pressed[sw] == true) {
      // Keep backlight on
      any_key_pressed = true;
      
      // Check released
      if (next_pressed[sw] == false) {
        // Update the pressed list
        pressed[sw] = false;
        // Update backlight timer
        last_release_millis = millis();
      }
    }
  }
  
  // Check for pressed keys
  // Check shift or accent, only update the pressed list
  for(int sw = SHIFT_INDEX; sw < NUM_SWITCHES - 1; sw++) {
    if (next_pressed[sw] == true && pressed[sw] == false) {
      // Update the pressed list
      pressed[sw] = true;
    }
  }

  // Check and send key press - sends each only once
  for(int sw = 0; sw < SHIFT_INDEX + 1; sw++) {
    // Update sw index for degree / final sigma
    if (sw == SHIFT_INDEX) {sw = NUM_SWITCHES - 1;}

    if (next_pressed[sw] == true && pressed[sw] == false) {
      // Update the pressed list
      pressed[sw] = true;

      // Check if the pressed keys are a valid combination
      if (isValidCombination()) {
        // Find pressed accent
        int accent_index = -1;
        for(int i = NUM_SWITCHES - 1 - 3; i < NUM_SWITCHES - 1; i++) {
          if (pressed[i] == true) {
            accent_index = i - (NUM_SWITCHES - 1 - 3);
            break;
          }
        }

        // Send the key 
#ifdef SINGLE_SHIFT
        sendKey(sw, accent_index, pressed[SHIFT_INDEX], false);
#else
        sendKey(sw, accent_index, pressed[SHIFT_INDEX], pressed[SHIFT_INDEX + 1]);
#endif //SINGLE_SHIFT

      }
    }
  }

  // Update backlight
  // If backlight off and keys are pressed, fade it on
  if (any_key_pressed || keep_rising) {
    if (backlight_rising == false) {
      backlight_rising = true;
      keep_rising = true;
      backlight_last_update_millis = millis();
    } else {
      bool time_to_update = (millis() - backlight_last_update_millis) > (BACKLIGHT_FADE_TIME_MS / BACKLIGHT_DUTY_MAX);
      if (backlight_duty < BACKLIGHT_DUTY_MAX && time_to_update) {
        backlight_duty++;
        if (backlight_duty >= BACKLIGHT_DUTY_MAX) {
          backlight_duty = BACKLIGHT_DUTY_MAX;
          keep_rising = false;
        }
        analogWrite(PIN_BACKLIGHT, backlight_duty);
        backlight_last_update_millis = millis();
      }
    }
  }

  // If backlight on and keys are all released, fade it off 
  else {
    int time_since_release_s = ((millis() - last_release_millis)/1000);
    if (backlight_duty > 0 && time_since_release_s > BACKLIGHT_FADE_AFTER_S) {
      if (backlight_rising) {
        backlight_rising = false;
        backlight_last_update_millis = millis();
      } else {
        bool time_to_update = (millis() - backlight_last_update_millis) > (BACKLIGHT_FADE_TIME_MS / BACKLIGHT_DUTY_MAX);
        if (backlight_duty > 0 && time_to_update) {
          backlight_duty--;
          if (backlight_duty < 0) {
            backlight_duty = 0;
          }
          analogWrite(PIN_BACKLIGHT, backlight_duty);
          backlight_last_update_millis = millis();
        }
      }
    }
  }

}