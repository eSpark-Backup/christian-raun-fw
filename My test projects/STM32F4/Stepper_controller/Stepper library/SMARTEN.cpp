#include "TMCStepper.h"
#include "TMC_MACROS.h"

#define SET_REG(SETTING) SMARTEN_register.SETTING = B; write(SMARTEN_register.address, SMARTEN_register.sr)
#define GET_REG(SETTING) return SMARTEN_register.SETTING

uint32_t Stepper_TMC2660::SMARTEN() { return SMARTEN_register.sr; }
void Stepper_TMC2660::SMARTEN(uint32_t data) {
  SMARTEN_register.sr = data;
  write(SMARTEN_register.address, SMARTEN_register.sr);
}

void Stepper_TMC2660::seimin(bool B) 	{ SET_REG(seimin);	}
void Stepper_TMC2660::sedn(uint8_t B) 	{ SET_REG(sedn); 	}
void Stepper_TMC2660::semax(uint8_t B) 	{ SET_REG(semax);	}
void Stepper_TMC2660::seup(uint8_t B) 	{ SET_REG(seup);	}
void Stepper_TMC2660::semin(uint8_t B) 	{ SET_REG(semin);	}

bool Stepper_TMC2660::seimin() 	{ GET_REG(seimin);	}
uint8_t Stepper_TMC2660::sedn() 	{ GET_REG(sedn);	}
uint8_t Stepper_TMC2660::semax() { GET_REG(semax);	}
uint8_t Stepper_TMC2660::seup() 	{ GET_REG(seup);	}
uint8_t Stepper_TMC2660::semin() { GET_REG(semin);	}
