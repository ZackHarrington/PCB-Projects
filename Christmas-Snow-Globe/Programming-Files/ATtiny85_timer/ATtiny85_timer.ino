#include <avr/io.h>        // Adds useful constants
#include <util/delay.h>    // Adds delay_ms and delay_us functions
  
// For sleep and setting watchdog as interrupt
#include <avr/sleep.h>
#include <avr/interrupt.h>


// Routines to set and clear bits (used in the sleep code)
#ifndef cbi
#define cbi(sfr, bit) (_SFR_BYTE(sfr) &= ~_BV(bit))
#endif
#ifndef sbi
#define sbi(sfr, bit) (_SFR_BYTE(sfr) |= _BV(bit))
#endif


// Variables
const int ledPin = 4;
boolean state = 0;

// Variables for sleep/power down modes:
volatile boolean f_wdt = 1;
int sleepStep = 0;


void setup()
{
  pinMode(ledPin, OUTPUT);
  digitalWrite(ledPin, HIGH);

  // Set the rest to be inputs - saves more power
  pinMode(0, INPUT);  
  pinMode(1, INPUT);
  pinMode(2, INPUT);
  pinMode(3, INPUT);
  pinMode(5, INPUT);
  
  // switch Analog to Digital Converter OFF
  cbi(ADCSRA, ADEN);

  // 8 second watchdog interrupt
  setup_watchdog(9);
}


/*
Time tested : Avg time per sleep
8s          : 8.96s
16s         : 8.968s
2min        : 8.955s
1hr test 1  : 8.959s
1hr test 2  : 9.955s

Expected intervals with 8.955s per interval
6hrs ON  : 6*3600 / 8.955 = 2412.06 intervals
18hrs OFF: 18*3600/ 8.955 = 7236.18 intervals 
*/


void loop()
{

  if (f_wdt==1) {  // wait for timed out watchdog / flag is set when a watchdog timeout occurs
    f_wdt=0;       // reset flag

    // On
    if (state == 1) {
      // Change to Off
      digitalWrite(ledPin, LOW);
      state = 0;

      // Sleep for 18 hours and disable pin
      // Set to input - saves more power
      pinMode(ledPin, INPUT);
      system_sleep(7236);
      pinMode(ledPin, OUTPUT);
    }
    
    // Off, time to change
    else {
      // Change to On
      digitalWrite(ledPin, HIGH);
      state = 1;

      // Sleep for 6 hours
      system_sleep(2412);
    }
    
  }
}


// Put system into sleep state 
// Wakes when watchdog is timed out
void system_sleep(int steps) {
  // Sets sleep mode
  set_sleep_mode(SLEEP_MODE_PWR_DOWN);
  
  while (sleepStep < steps) {
    sleep_enable();

    // System actually sleeps
    sleep_mode();

    // Continue execution here
    sleep_disable();  

    sleepStep++;
  }

  sleepStep = 0;
}

// 0=16ms, 1=32ms,2=64ms,3=128ms,4=250ms,5=500ms
// 6=1 sec,7=2 sec, 8=4 sec, 9= 8sec
void setup_watchdog(int ii) {

  byte bb;
  int ww;
  if (ii > 9 ) ii=9;
  bb=ii & 7;
  if (ii > 7) bb|= (1<<5);
  bb|= (1<<WDCE);
  ww=bb;

  MCUSR &= ~(1<<WDRF);
  // start timed sequence
  WDTCR |= (1<<WDCE) | (1<<WDE);
  // set new watchdog timeout value
  WDTCR = bb;
  WDTCR |= _BV(WDIE);
}
  
// Watchdog Interrupt Service / is executed when watchdog timed out
ISR(WDT_vect) {
  f_wdt=1;  // set global flag
}