// Samples an analog pin and returns the average (and the standard deviation if a pointer is specified)
float sampleAnalogPin(const int pin, const uint8_t samples = 20, 
                          const uint16_t duration = 250, float* stdev = NULL) {
  if (samples == 0) {logInputError(F("sampleAnalogPin"), F("samples"), (int)samples);}
  uint16_t sum = 0;
  uint16_t values[samples];
  uint16_t iterationDelay = duration / samples;
  for (uint8_t i = 0; i < samples; i++) {
    values[i] = analogRead(pin);
    sum += values[i];
    delay(iterationDelay);
  }
  float mean = ((float)sum / (float)samples);

  if (stdev != NULL && samples > 1) {
    float stdevsum = 0;
    for (uint8_t i = 0; i < samples; i++) {
      stdevsum += pow(values[i] - mean, 2);
    }
    
    *stdev = sqrt(stdevsum / (samples - 1));
  }
  
  return mean;
}
