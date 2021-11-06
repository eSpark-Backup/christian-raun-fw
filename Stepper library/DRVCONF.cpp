#include "TMCStepper.h"
#include "TMC_MACROS.h"

#define SET_REG(SETTING) DRVCONF_register.SETTING = B; write(DRVCONF_register.address, DRVCONF_register.sr)
#define GET_REG(SETTING) return DRVCONF_register.SETTING;

uint32_t Stepper_TMC2660::DRVCONF() { return DRVCONF_register.sr; }
void Stepper_TMC2660::DRVCONF(uint32_t data) {
  DRVCONF_register.sr = data;
  write(DRVCONF_register.address, DRVCONF_register.sr);
}

void Stepper_TMC2660::tst(bool B)      { SET_REG(tst);	}
void Stepper_TMC2660::slph(uint8_t B)  { SET_REG(slph);	}
void Stepper_TMC2660::slpl(uint8_t B)  { SET_REG(slpl);	}
void Stepper_TMC2660::diss2g(bool B)   { SET_REG(diss2g);}
void Stepper_TMC2660::ts2g(uint8_t B)  { SET_REG(ts2g);	}
void Stepper_TMC2660::sdoff(bool B)    { SET_REG(sdoff);	}
void Stepper_TMC2660::vsense(bool B)   { SET_REG(vsense);}
void Stepper_TMC2660::rdsel(uint8_t B) { SET_REG(rdsel);	}

bool	 Stepper_TMC2660::tst()		{ GET_REG(tst);		}
uint8_t	 Stepper_TMC2660::slph()		{ GET_REG(slph);	}
uint8_t	 Stepper_TMC2660::slpl()		{ GET_REG(slpl);	}
bool	 Stepper_TMC2660::diss2g()	{ GET_REG(diss2g);	}
uint8_t	 Stepper_TMC2660::ts2g()		{ GET_REG(ts2g);	}
bool	 Stepper_TMC2660::sdoff()	{ GET_REG(sdoff);	}
bool	 Stepper_TMC2660::vsense()	{ GET_REG(vsense);	}
uint8_t	 Stepper_TMC2660::rdsel()	{ GET_REG(rdsel);	}
