#include "TMCStepper.h"
#include "TMC_MACROS.h"

#define SET_REG(SETTING) SGCSCONF_register.SETTING = B; write(SGCSCONF_register.address, SGCSCONF_register.sr);
#define GET_REG(SETTING) return SGCSCONF_register.SETTING;

uint32_t Stepper_TMC2660::SGCSCONF() { return SGCSCONF_register.sr; }
void Stepper_TMC2660::SGCSCONF(uint32_t data) {
  SGCSCONF_register.sr = data;
  write(SGCSCONF_register.address, SGCSCONF_register.sr);
}

void Stepper_TMC2660::sfilt(bool B) 	{ SET_REG(sfilt); }
void Stepper_TMC2660::sgt(uint8_t B) { SET_REG(sgt); }
void Stepper_TMC2660::cs(uint8_t B) 	{ SET_REG(cs); }

bool Stepper_TMC2660::sfilt() { GET_REG(sfilt); }
uint8_t Stepper_TMC2660::sgt(){ GET_REG(sgt); }
uint8_t Stepper_TMC2660::cs() { GET_REG(cs); }
