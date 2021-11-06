#include "TMCStepper.h"
#include "TMC_MACROS.h"

#define SET_REG0(SETTING) DRVCTRL_0_register.SETTING = B; DRVCTRL(DRVCTRL_0_register.sr)
#define SET_REG1(SETTING) DRVCTRL_1_register.SETTING = B; DRVCTRL(DRVCTRL_1_register.sr)
#define GET_REG0(SETTING) return DRVCTRL_0_register.SETTING
#define GET_REG1(SETTING) return DRVCTRL_1_register.SETTING

uint32_t Stepper_TMC2660::DRVCTRL() {
	if(sdoff() == 1) return DRVCTRL_1_register.sr;
	else return DRVCTRL_0_register.sr;
}
void Stepper_TMC2660::DRVCTRL(uint32_t data) {
	if(sdoff() == 1) {
		DRVCTRL_1_register.sr = data;
		write(DRVCTRL_1_register.address, DRVCTRL_1_register.sr);
	} else {
		DRVCTRL_0_register.sr = data;
		write(DRVCTRL_0_register.address, DRVCTRL_0_register.sr);
	}
}

// DRVCTRL (SPI)
void Stepper_TMC2660::pha(bool B)    { if(sdoff() == 0) return; SET_REG1(pha); }
void Stepper_TMC2660::ca(uint8_t B)  { if(sdoff() == 0) return; SET_REG1(ca);  }
void Stepper_TMC2660::phb(bool B)    { if(sdoff() == 0) return; SET_REG1(phb); }
void Stepper_TMC2660::cb(uint8_t B)  { if(sdoff() == 0) return; SET_REG1(cb);  }

bool Stepper_TMC2660::pha()    { if(sdoff() == 0) sdoff(1); GET_REG1(pha); }
uint8_t Stepper_TMC2660::ca()  { if(sdoff() == 0) sdoff(1); GET_REG1(ca);  }
bool Stepper_TMC2660::phb()    { if(sdoff() == 0) sdoff(1); GET_REG1(phb); }
uint8_t Stepper_TMC2660::cb()  { if(sdoff() == 0) sdoff(1); GET_REG1(cb);  }

// DRVCTRL (STEP/DIR)
void Stepper_TMC2660::intpol(bool B) { if(sdoff()) return; SET_REG0(intpol); }
void Stepper_TMC2660::dedge(bool B)  { if(sdoff()) return; SET_REG0(dedge);  }
void Stepper_TMC2660::mres(uint8_t B){ if(sdoff()) return; SET_REG0(mres);   }

bool Stepper_TMC2660::intpol() { if(sdoff()) sdoff(0); GET_REG0(intpol); }
bool Stepper_TMC2660::dedge()  { if(sdoff()) sdoff(0); GET_REG0(dedge);  }
uint8_t Stepper_TMC2660::mres(){ if(sdoff()) sdoff(0); GET_REG0(mres);   }
