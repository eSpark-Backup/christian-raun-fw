#include "TMCStepper.h"
#include "TMC_MACROS.h"

#define SET_REG(SETTING) SHORT_CONF_register.SETTING = B; write(SHORT_CONF_register.address, SHORT_CONF_register.sr)
#define GET_REG(SETTING) return SHORT_CONF_register.SETTING

uint32_t Stepper_TMC2160::SHORT_CONF() { return SHORT_CONF_register.sr; }
void Stepper_TMC2160::SHORT_CONF(uint32_t input) {
	SHORT_CONF_register.sr = input;
	write(SHORT_CONF_register.address, SHORT_CONF_register.sr);
}

void Stepper_TMC2160::s2vs_level(uint8_t B)	{ SET_REG(s2vs_level);	}
void Stepper_TMC2160::s2g_level(uint8_t B)	{ SET_REG(s2g_level);	}
void Stepper_TMC2160::shortfilter(uint8_t B)	{ SET_REG(shortfilter);	}
void Stepper_TMC2160::shortdelay(bool B)		{ SET_REG(shortdelay);	}
uint8_t Stepper_TMC2160::s2vs_level()		{ GET_REG(s2vs_level);	}
uint8_t Stepper_TMC2160::s2g_level()			{ GET_REG(s2g_level);	}
uint8_t Stepper_TMC2160::shortfilter()		{ GET_REG(shortfilter);	}
bool Stepper_TMC2160::shortdelay()			{ GET_REG(shortdelay);	}
