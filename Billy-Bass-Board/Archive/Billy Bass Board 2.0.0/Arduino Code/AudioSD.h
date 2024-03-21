#ifndef AUDIOSD_H
#define AUDIOSD_H

#include <SD.h>
#include <SPI.h>
//#include <DAC.h> - Don't need to directly include the Arduino-ESP32 libraries, they
//                   are already included by nstalling the esp32 board.

/* Note 1: SD cards over 32GB need the exFAT file system, not supported here
 * Note 2: Audio Files should be in .wav (PCM) format
 * Note 3: .wav file format (LSB first for integers)
 *  0-3   "RIFF"
 *  4-7   File size (32bit integer)
 *  8-11  "WAVE"
 *  12-15 "fmt "
 *  ...
 *  20,21 1 = PCM format (16bit integer)
 *  22,23 Number of channels (16bit integer)
 *  24-27 Sample rate (32bit integer)
 *  ...
 *  34,35 Bits per sample / bit depth (16bit integer)
 *  36-39 "data" - This position is not guarunteed, but "data" always marks the start of the data
 * Note 4: Assuming a bit depth (bits/sample) of 8
 */ 


/* Performs standard SD card functions over SPI with the 
 * abylity to play .wav audio files through a DAC pin
 */
class AudioSD {

public:
  AudioSD();

  /* Attempt to access the SD card
   * - Return: true = success
   */
  bool connect(uint8_t CSPin);
  // Print card properties
  void printSDData();

  /* Audio: Begins playback from a .wav file
   * - Return: duration (μs) or error code
   * -> 0 = incorrect file type
   * -> 1 = unable to access file
   * -> 2 = file contains no audio data
   * -> 3 = not PCM format
   * -> 4 = unable to find start of data
   */
  uint32_t play(const char* filePath);
  /* Audio: Checks if a file is open to be played
   * - Return: true = yes
   */
  bool canPlay();
  // Audio: Plays the next byte when acceptable
  void loop(uint8_t DACPin);

  /* Standard: Opens a filepath
   * - Return: true = success
   */
  bool openFile(const char* filePath);
  // Standard: Closes the open file
  void closeFile();
  /* Standard: Reads data from a file
   * - Return: # bytes read, -1 = failure to read
   */
  int readData(uint8_t* buffer, size_t bufferSize);

  /* Check if the end of the file has been reached
   * Return: true = end of file
   */
  bool isEOF();

private:
  File audioFile;

  bool playing;
  float volume;
  uint16_t channels;
  uint32_t samplePeriod;
  uint32_t lastSampleTime;

};

#endif // AUDIOSD_H