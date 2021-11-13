#include "TMCStepper.h"
#include "TMC_MACROS.h"

#define SET_REG(SETTING) DRV_CONF_register.SETTING = B; write(DRV_CONF_register.address, DRV_CONF_register.sr);
#define GET_REG(SETTING) return DRV_CONF_register.SETTING;

// W: DRV_CONF
uint32_t Stepper_TMC2160::DRV_CONF() { return DRV_CONF_register.sr; }
void Stepper_TMC2160::DRV_CONF(uint32_t input) {
	DRV_CONF_register.sr = input;
	write(DRV_CONF_register.address, DRV_CONF_register.sr);
}

void Stepper_TMC2160::bbmtime(uint8_t B)		{ SET_REG(bbmtime); 	}
void Stepper_TMC2160::bbmclks(uint8_t B)		{ SET_REG(bbmclks); 	}
void Stepper_TMC2160::otselect(uint8_t B)	{ SET_REG(otselect); 	}
void Stepper_TMC2160::drvstrength(uint8_t B)	{ SET_REG(drvstrength); }
void Stepper_TMC2160::filt_isense(uint8_t B)	{ SET_REG(filt_isense); }
uint8_t Stepper_TMC2160::bbmtime()			{ GET_REG(bbmtime);		}
uint8_t Stepper_TMC2160::bbmclks()			{ GET_REG(bbmclks);		}
uint8_t Stepper_TMC2160::otselect()			{ GET_REG(otselect);	}
uint8_t Stepper_TMC2160::drvstrength()		{ GET_REG(drvstrength);	}
uint8_t Stepper_TMC2160::filt_isense()		{ GET_REG(filt_isense);	}
