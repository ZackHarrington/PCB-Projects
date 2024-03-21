#include "AudioSD.h"

AudioSD::AudioSD() {
  playing = false;
  volume = 0.02;
  channels = 0;
  samplePeriod = 0;
  lastSampleTime = 0;
}

bool AudioSD::connect(uint8_t csPin) {
  if (!SD.begin(csPin)) {
    return 0;
  }
  return 1;
}

void AudioSD::printSDData() {
  Serial.print(" Card Type: ");
  switch (SD.cardType()) {
    case CARD_NONE:
      Serial.println("NONE");
      break;
    case CARD_MMC:
      Serial.println("MMC");
      break;
    case CARD_SD:
      Serial.println("SD");
      break;
    case CARD_SDHC:
      Serial.println("SDHC");
      break;
    default:
      Serial.println("UNKNOWN");
  }
  Serial.print(" Card Size: ");
  Serial.println(SD.cardSize());
  Serial.print(" Total Bytes: ");
  Serial.println(SD.totalBytes());
  Serial.print(" Used Bytes: ");
  Serial.println(SD.usedBytes());
}

uint32_t AudioSD::play(const char* filePath) {
  // Verify .wav file extension
  int length = strlen(filePath);
  if (length < 4 || strcmp(filePath + length - 4, ".wav") != 0 || *(filePath + length) != '\0') {
    return 0;
  }
  
  // Attempt to open file
  audioFile.close();
  audioFile = SD.open(filePath);
  if (!audioFile) {
    return 1;
  }

  // Extract .wav file properties
  byte buffer[4] = {0};
  audioFile.seek(4);
  if (audioFile.read(buffer, 4) != 4) {
    return 2;
  }
  uint32_t fileSize = (buffer[3] << 24 | buffer[2] << 16 | buffer[1] << 8 | buffer[0]);
  // Verify PCM
  audioFile.seek(20);
  if (audioFile.read() != uint8_t(1)) {
    return 3;
  }
  audioFile.seek(22);
  if (audioFile.read(buffer, 2) != 2) {
    return 2;
  }
  channels = (buffer[1] << 8 | buffer[0]);
  if (audioFile.read(buffer, 4) != 4) {
    return 2;
  }
  uint32_t sampleRate = (buffer[3] << 24 | buffer[2] << 16 | buffer[1] << 8 | buffer[0]);
  audioFile.seek(34);
  if (audioFile.read(buffer, 2) != 2 || buffer[0] != 8) {
    return 2;
  }

  // Read to 'data' - advance read() buffer to the start of PCM data
  int count = 0;
  while (memcmp(buffer, "data", 4) != 0) {
    if (!audioFile.available()) {
      return 4;
    }
    for (int i = 0; i < 3; i++) {
      buffer[i] = buffer[i+1];
    }
    buffer[3] = audioFile.read();
    count++;
  }

  // Do the math
  // Convert from seconds to microseconds
  samplePeriod = static_cast<uint32_t>((1.0 / sampleRate) * 1000000);
  uint32_t duration = samplePeriod * fileSize;

  // Set lastSampleTime
  lastSampleTime = micros();

  playing = true;
  return duration;
}

bool AudioSD::canPlay() {
  return playing;
}

void AudioSD::loop(uint8_t DACPin) {
  // Check if it's time to read and if micros() has overflown (~ every 70 minutes)
  uint32_t currentTime = micros();
  uint64_t delta = 0;
  if (currentTime >= lastSampleTime) {
    delta = currentTime - lastSampleTime;
  } else {
    delta = (UINT64_MAX - lastSampleTime) + currentTime + 1;
  }
  if (delta < samplePeriod) {
    return;
  }

  // Update timing
  lastSampleTime = micros();
  
  // Read and update DAC byte
  int data = audioFile.read();
  if (data == -1) {
    dacDisable(DACPin);
    audioFile.close();
    playing = false;
    return;
  } else {
    data = (data - 128) * volume + 128;
    dacWrite(DACPin, static_cast<uint8_t>(data));
  }

  // Ignore the other channels
  for (uint16_t i = 1; i < channels; i++) {
    audioFile.read();
  }
}

bool AudioSD::openFile(const char* filePath) {
  closeFile();
  audioFile = SD.open(filePath);
  if (!audioFile) {
    return false;
  }
  return true;
}

void AudioSD::closeFile() {
  audioFile.close();
}

int AudioSD::readData(uint8_t* buffer, size_t bufferSize) {
  return audioFile.read(buffer, bufferSize);
}

bool AudioSD::isEOF() {
  return !(audioFile.available());
}