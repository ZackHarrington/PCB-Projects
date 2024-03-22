// AT mode - HC-06
#include <SoftwareSerial.h>

SoftwareSerial mySerial(3, 5); // RX, TX

void setup() {
  pinMode(1, OUTPUT);
  digitalWrite(1, HIGH); // set the bluetooth control pins high
  
  Serial.begin(9600);
  Serial.println("Enter AT commands:");
  mySerial.begin(9600);
}

void loop() {
  if (mySerial.available())
    Serial.write(mySerial.read());
  
  // Used for sending AT commands (when no device is connected)
  //if (Serial.available())
  //  mySerial.write(Serial.read());
}
