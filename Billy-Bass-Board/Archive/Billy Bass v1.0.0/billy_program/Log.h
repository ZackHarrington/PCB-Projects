// Allows for resetting the arduino programatically by moving to address 0
void(* resetArduino) (void) = 0;

// Prints an error message for an invalid function input then resets the Ardiuno program
void logInputError(String functionName, String variable, int value){
  Serial.print("[" + String(millis()) + "]\t");
  Serial.print(F("ERROR: Invalid value for "));
  Serial.print(variable);
  Serial.print(F(" in "));
  Serial.print(functionName);
  Serial.print(F(": "));
  Serial.println(value);
  delay(5000);
  resetArduino();
}

// Prints an error message and resets the Arduino program
void logError(String message) {
  Serial.print("[" + String(millis()) + "]\t");
  Serial.print(F("ERROR: "));
  Serial.println(message);
  delay(5000);
  resetArduino();
}
