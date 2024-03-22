int sensorPin = A0;    // select the input pin for the audio signal input
int ledPin = 13;

void setup() {
  // declare the ledPin as an OUTPUT and sensorPin as input
  pinMode(ledPin, OUTPUT);
  pinMode(sensorPin, INPUT);
  Serial.begin(9600);      // open the serial port at 9600 bps:    
}

void loop() {
  int quietThreshold = 5;
  int sensorValue = analogRead(sensorPin);
  if(sensorValue > quietThreshold) {
    digitalWrite(ledPin, HIGH);
    Serial.println("Music IS playing!");
    Serial.print("sensorValue: ");  
    Serial.println(sensorValue);
  } else {
    digitalWrite(ledPin, LOW);
    Serial.println("Music is NOT playing.");
    Serial.print("sensorValue: ");  
    Serial.println(sensorValue);
  }
}
