#include "morse.h"

#include <assert.h>
#include <ctype.h>
#include <limits.h>
#include <stddef.h>
#include <string.h>
#include <stdlib.h>

typedef struct {
  char c;
  const char *code;
} TextMorse;

//<https://en.wikipedia.org/wiki/Morse_code#/media/File:International_Morse_Code.svg>
static const TextMorse charCodes[] = {
  { 'A', ".-" },
  { 'B', "-..." },
  { 'C', "-.-." },
  { 'D', "-.." },
  { 'E', "." },
  { 'F', "..-." },
  { 'G', "--." },
  { 'H', "...." },
  { 'I', ".." },
  { 'J', ".---" },
  { 'K', "-.-" },
  { 'L', ".-.." },
  { 'M', "--" },
  { 'N', "-." },
  { 'O', "---" },
  { 'P', ".--." },
  { 'Q', "--.-" },
  { 'R', ".-." },
  { 'S', "..." },
  { 'T', "-" },
  { 'U', "..-" },
  { 'V', "...-" },
  { 'W', ".--" },
  { 'X', "-..-" },
  { 'Y', "-.--" },
  { 'Z', "--.." },

  { '1', ".----" },
  { '2', "..---" },
  { '3', "...--" },
  { '4', "....-" },
  { '5', "....." },
  { '6', "-...." },
  { '7', "--..." },
  { '8', "---.." },
  { '9', "----." },
  { '0', "-----" },

  { '\0', ".-.-." }, //AR Prosign indicating End-of-message
                     //<https://en.wikipedia.org/wiki/Prosigns_for_Morse_code>
};


/** Return NUL-terminated code string for char c. Returns NULL if
 *  there is no code for c.
 */
static const char *
charToCode(Byte c) {
  for (int i = 0; i < sizeof(charCodes)/sizeof(charCodes[0]); i++) {
    if (charCodes[i].c == c) return charCodes[i].code;
  }
  return NULL;
}


/** Return char for code. Returns < 0 if code is invalid.
 */
static int
codeToChar(const char *code) {
  for (int i = 0; i < sizeof(charCodes)/sizeof(charCodes[0]); i++) {
    if (strcmp(charCodes[i].code, code) == 0) return charCodes[i].c;
  }
  return -1;
}

/** Given an array of Bytes, a bit index is the offset of a bit
 *  in the array (with MSB having offset 0).
 *
 *  Given a bytes[] array and some bitOffset, and assuming that
 *  BITS_PER_BYTE is 8, then (bitOffset >> 3) represents the index of
 *  the byte within bytes[] and (bitOffset & 0x7) gives the bit-index
 *  within the byte (MSB represented by bit-index 0) and .
 *
 *  For example, given array a[] = {0xB1, 0xC7} which is
 *  { 0b1011_0001, 0b1100_0111 } we have the following:
 *
 *     Bit-Offset   Value
 *        0           1
 *        1           0
 *        2           1
 *        3           1
 *        4           0
 *        5           0
 *        6           0
 *        7           1
 *        8           1
 *        9           1
 *       10           0
 *       11           0
 *       12           0
 *       13           1
 *       14           1
 *       15           1
 *
 */


/** Return mask for a Byte with bit at bitIndex set to 1, all other
 *  bits set to 0.  Note that bitIndex == 0 represents the MSB,
 *  bitIndex == 1 represents the next significant bit and so on.
 */
static inline unsigned
byteBitMask(unsigned bitIndex)
{
  return 1 << (BITS_PER_BYTE - 1 - bitIndex);
}

/** Given a power-of-2 powerOf2, return log2(powerOf2) */
static inline unsigned
getLog2PowerOf2(unsigned powerOf2)
{
	int log = 0;
	while (powerOf2 > 1) {	
		log += 1;
    powerOf2 >>= 1;
  }
  return log;
}

/** Given a bitOffset return the bitIndex part of the bitOffset. */
static inline unsigned
getBitIndex(unsigned bitOffset)
{
	return bitOffset % BITS_PER_BYTE;
}

/** Given a bitOffset return the byte offset part of the bitOffset */
static inline unsigned
getOffset(unsigned bitOffset)
{
  return bitOffset / BITS_PER_BYTE;
}

/** Return bit at offset bitOffset in array[]; i.e., return
 *  (bits(array))[bitOffset]
 */
static inline int
getBitAtOffset(const Byte array[], unsigned bitOffset)
{
  Byte b = array[getOffset(bitOffset)];
  return (b & byteBitMask(getBitIndex(bitOffset))) > 0;
}

/** Set bit selected by bitOffset in array to bit. */
static inline void
setBitAtOffset(Byte array[], unsigned bitOffset, unsigned bit)
{
  if (bit) {
    array[getOffset(bitOffset)] |= byteBitMask(getBitIndex(bitOffset));
  } else {
    array[getOffset(bitOffset)] &= ~byteBitMask(getBitIndex(bitOffset));
  }
  return;
}

/** Set count bits in array[] starting at bitOffset to bit.  Return
 *  bit-offset one beyond last bit set.
 */
static inline unsigned
setBitsAtOffset(Byte array[], unsigned bitOffset, unsigned bit, unsigned count)
{
  int temp = bitOffset + count;
  for (; count > 0; count--) {
    setBitAtOffset(array, bitOffset + count - 1, bit);
  }
  return temp;
}


/** Convert text[nText] into a binary encoding of morse code in
 *  morse[].  It is assumed that array morse[] is initially all zero
 *  and is large enough to represent the morse code for all characters
 *  in text[].  The result in morse[] should be terminated by the
 *  morse prosign AR.  Any sequence of non-alphanumeric characters in
 *  text[] should be treated as a *single* inter-word space.  Leading
 *  non alphanumeric characters in text are ignored.
 *
 *  Returns count of number of bytes used within morse[].
 */
int
textToMorse(const Byte text[], unsigned nText, Byte morse[])
{
  int position = 0;

  for (int i = 0; i < nText; i++)
  {
    Byte c = text[i];
    // if char is space or newline
    if (c == ' ' || c == '\n') { // interword = 7xT
      setBitsAtOffset(morse, position, 0, 4);
      position += 4;
    } else {
      // if char is not space or newline
      const char* morseValue = charToCode(c);
      for (int j = 0; j < strlen(morseValue); j++)
      {
        if (morseValue[j] == '-') {
          setBitsAtOffset(morse, position, 1, 3);
          position += 3;
        } else if (morseValue[j] == '.') {
          setBitAtOffset(morse, position, 1);
          position += 1;
        }
        if (j != strlen(morseValue) - 1) {
          setBitAtOffset(morse, position, 0); // 1xT interval between . -
          position += 1;
        }
      }
      if (text[i+1] != ' ' || text[i+1] != '\n') {
        setBitsAtOffset(morse, position, 0, 3); 
        position += 3; // 3xT interval between character
      }
    }
    
  }

  // now gotta add AR'
  const char* morseValue = charToCode('\0');
  for (int j = 0; j < strlen(morseValue); j++)
  {
    if (morseValue[j] == '-') {
      setBitsAtOffset(morse, position, 1, 3);
      position += 3;
    } else if (morseValue[j] == '.') {
      setBitAtOffset(morse, position, 1);
      position += 1;
    }
    if (j != strlen(morseValue) - 1) {
      setBitAtOffset(morse, position, 0); // 1xT interval between . -
      position += 1;
    }
  } 
  
  return position % BITS_PER_BYTE == 0 ? position / BITS_PER_BYTE : (position / BITS_PER_BYTE) + 1;
}

/** Return count of run of identical bits starting at bitOffset
 *  in bytes[nBytes].
 */
static inline unsigned
runLength(const Byte bytes[], unsigned nBytes, unsigned bitOffset)
{
  int bit = getBitAtOffset(bytes, bitOffset);
  int nextBit;
  int position = bitOffset + 1;

  while ((nextBit = getBitAtOffset(bytes, position)) == bit) {
    position += 1;
  }
  return position - bitOffset;
}


/** Convert AR-prosign terminated binary Morse encoding in
 *  morse[nMorse] into text in text[].  It is assumed that array
 *  text[] is large enough to represent the decoding of the code in
 *  morse[].  Leading zero bits in morse[] are ignored. Encodings
 *  representing word separators are output as a space ' ' character.
 *
 *  Returns count of number of bytes used within text[], < 0 on error.
 */
int
morseToText(const Byte morse[], unsigned nMorse, Byte text[])
{
  int position = 0;
  int sentinel = 0, runner = 0;
  char* code = malloc(10 * sizeof(char));
  int pos = 0;

  int textPos = 0;
  while (codeToChar(code) != '\0') {
    if (getBitAtOffset(morse, sentinel) == getBitAtOffset(morse, runner)) {
      runner += 1;
    } else {
      int count = runner - sentinel;
      if (getBitAtOffset(morse, sentinel) == 1) {
        if (count == 1) {
          code[pos] = '.';
          pos += 1;
        }
        else if (count == 3) {
          code[pos] = '-';
          pos += 1;
        }
      } else {
        if (count == 3) {
          code[pos] = '\0';
          text[textPos] = codeToChar(code);
          textPos += 1;
          code[0] = '\0';
          pos = 0;
        } else if (count == 7) {
          code[pos] = '\0';
          text[textPos] = codeToChar(code);
          textPos += 1;
          code[0] = '\0';
          pos = 0;
          text[textPos] = ' ';
          textPos += 1;
        } else {
          // probably something i still need to implement
        }

      }
      
      sentinel = runner;

    }
    position += 1;
  }
  text[textPos] = '\0';
  return textPos + 1;
}