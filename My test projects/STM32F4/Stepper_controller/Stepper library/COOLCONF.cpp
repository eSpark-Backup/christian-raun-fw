#include "TMCStepper.h"
#include "TMC_MACROS.h"

#define SET_REG(SETTING) COOLCONF_register.SETTING = B; write(COOLCONF_register.address, COOLCONF_register.sr);
#define GET_REG(SETTING) return COOLCONF_register.SETTING;

// COOLCONF
uint32_t Stepper_TMC2130::COOLCONF() { return COOLCONF_register.sr; }
void Stepper_TMC2130::COOLCONF(uint32_t input) {
	COOLCONF_register.sr = input;
	write(COOLCONF_register.address, COOLCONF_register.sr);
}

void Stepper_TMC2130::semin(	uint8_t B )	{ SET_REG(semin);	}
void Stepper_TMC2130::seup(	uint8_t B )	{ SET_REG(seup);	}
void Stepper_TMC2130::semax(	uint8_t B )	{ SET_REG(semax);	}
void Stepper_TMC2130::sedn(	uint8_t B )	{ SET_REG(sedn);	}
void Stepper_TMC2130::seimin(bool 	B )	{ SET_REG(seimin);	}
void Stepper_TMC2130::sgt(	int8_t  B )	{ SET_REG(sgt);		}
void Stepper_TMC2130::sfilt(	bool 	B )	{ SET_REG(sfilt);	}

uint8_t Stepper_TMC2130::semin()	{ GET_REG(semin);	}
uint8_t Stepper_TMC2130::seup()	{ GET_REG(seup);	}
uint8_t Stepper_TMC2130::semax()	{ GET_REG(semax);	}
uint8_t Stepper_TMC2130::sedn()	{ GET_REG(sedn);	}
bool 	Stepper_TMC2130::seimin(){ GET_REG(seimin);	}
bool 	Stepper_TMC2130::sfilt()	{ GET_REG(sfilt);	}

int8_t Stepper_TMC2130::sgt() {
	// Two's complement in a 7bit value
	int8_t val = (COOLCONF_register.sgt &  0x40) << 1; // Isolate sign bit
	val |= COOLCONF_register.sgt & 0x7F;
	return val;
}

uint16_t Stepper_TMC2209::COOLCONF() { return COOLCONF_register.sr; }
void Stepper_TMC2209::COOLCONF(uint16_t input) {
	COOLCONF_register.sr = input;
	write(COOLCONF_register.address, COOLCONF_register.sr);
}

void Stepper_TMC2209::semin(	uint8_t B )	{ SET_REG(semin);	}
void Stepper_TMC2209::seup(	uint8_t B )	{ SET_REG(seup);	}
void Stepper_TMC2209::semax(	uint8_t B )	{ SET_REG(semax);	}
void Stepper_TMC2209::sedn(	uint8_t B )	{ SET_REG(sedn);	}
void Stepper_TMC2209::seimin(bool 	B )	{ SET_REG(seimin);	}

uint8_t Stepper_TMC2209::semin()	{ GET_REG(semin);	}
uint8_t Stepper_TMC2209::seup()	{ GET_REG(seup);	}
uint8_t Stepper_TMC2209::semax()	{ GET_REG(semax);	}
uint8_t Stepper_TMC2209::sedn()	{ GET_REG(sedn);	}
bool 	Stepper_TMC2209::seimin(){ GET_REG(seimin);	}
