#include "SD.h"
#include "TMRpcm.h"
#include "SPI.h"

// Note 1: SD card must be 32GB or less to work with Arduino
// Note 2: Audio Files should be in .wav format at 
//  - 8 Bit resolution
//  - 16000 Hz
//  - Mono channel
//  - U8 (or unsigned 8-bit) PCM format

#define SD_ChipSelectPin 4
TMRpcm tmrpcm;

enum Sound {
  BUBBLES,              // 0.wav
  SNEEZE,               // 1.wav
  DONT_WORRY_BE_HAPPY,  // 2.wav
  TAKE_ME_TO_THE_RIVER, // 3.wav
  S4
};



// -- Setup Functions
// Attempts to connect to the SD card, returns 1 for success, 0 for failure to connect
int setupSDForAudio(const int audioOutPin) {
  tmrpcm.speakerPin = audioOutPin;
  
  if (!SD.begin(SD_ChipSelectPin)) {
    return 0;
  }

  tmrpcm.setVolume(4);  // Volume can be between 1 and 7, 4 works best for this project
  return 1;
}

// Plays a sound to verify the connection
void testSDForAudio() {
  tmrpcm.play("0.wav");
  delay(5000);
}


// -- Functions
// Starts playing the specified sound using the enum's integer representation
void playSDSound(const Sound sound) {
  if (int(sound) > int(S4)) {logInputError(F("playSDSound"), F("sound"), int(sound));}
  String soundFileName = String(sound) + ".wav";
  tmrpcm.play(soundFileName.c_str());
}

void stopSDSound() {
  tmrpcm.stopPlayback();
}
