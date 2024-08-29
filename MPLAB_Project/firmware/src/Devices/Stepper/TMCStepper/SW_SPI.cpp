#include "SW_SPI.hpp"
#include <xc.h>
#include <stdint.h>
#include "definitions.h"

#define HIGH 1
#define LOW 0
#define writeMOSI_H PORT_PinWrite(mosi_pin, HIGH)
#define writeMOSI_L PORT_PinWrite(mosi_pin, LOW)
#define writeSCK_H PORT_PinWrite(sck_pin, HIGH)
#define writeSCK_L PORT_PinWrite(sck_pin, LOW)
#define readMISO PORT_PinRead(miso_pin)


SW_SPIClass::SW_SPIClass(PORT_PIN mosi, PORT_PIN miso, PORT_PIN sck) :
  mosi_pin(mosi),
  miso_pin(miso),
  sck_pin(sck)
  {}

void SW_SPIClass::init() {
//  pinMode(mosi_pin, OUTPUT);
//  pinMode(sck_pin, OUTPUT);
//  pinMode(miso_pin, INPUT_PULLUP);
//  #ifdef ARDUINO_ARCH_AVR
//    mosi_register = portOutputRegister(getPort(mosi_pin));
//    miso_register = portInputRegister(getPort(miso_pin));
//    sck_register = portOutputRegister(getPort(sck_pin));
//    mosi_bm = digitalPinToBitMask(mosi_pin);
//    miso_bm = digitalPinToBitMask(miso_pin);
//    sck_bm = digitalPinToBitMask(sck_pin);
//  #endif
  writeSCK_H;
}

void wait(uint_fast8_t del) {
    for (uint_fast8_t i = 0; i < del; i++) {
        asm volatile("nop");
    }
}

uint8_t SW_SPIClass::transfer(uint8_t ulVal) {
  uint8_t value = 0;
  writeSCK_L;
    wait(64);

  for (uint8_t i=7 ; i>=1 ; i--) {
    // Write bit
    !!(ulVal & (1 << i)) ? writeMOSI_H : writeMOSI_L;
    wait(64);
    // Start clock pulse
    writeSCK_H;
    // Read bit
    value |= ( readMISO ? 1 : 0) << i;
    wait(64);
    // Stop clock pulse
    writeSCK_L;
  }

  !!(ulVal & (1 << 0)) ? writeMOSI_H : writeMOSI_L;
    wait(64);
  writeSCK_H;
  value |= ( readMISO ? 1 : 0) << 0;
    wait(64);

  return value;
}

uint16_t SW_SPIClass::transfer16(uint16_t data) {
  uint16_t returnVal = 0x0000;
  returnVal |= transfer((data>>8)&0xFF) << 8;
  returnVal |= transfer(data&0xFF) & 0xFF;
  return returnVal;
}
