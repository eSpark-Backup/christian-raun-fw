#include "TMCStepper.h"
#include "TMC_MACROS.h"

#define GET_REG(NS, SETTING) NS::DRV_STATUS_t r{0}; r.sr = DRV_STATUS(); return r.SETTING

uint32_t Stepper_TMC2130::DRV_STATUS() { return read(DRV_STATUS_t::address); }

uint16_t Stepper_TMC2130::sg_result(){ GET_REG(TMC2130_n, sg_result); 	}
bool Stepper_TMC2130::fsactive()		{ GET_REG(TMC2130_n, fsactive); 	}
uint8_t Stepper_TMC2130::cs_actual()	{ GET_REG(TMC2130_n, cs_actual); 	}
bool Stepper_TMC2130::stallguard()	{ GET_REG(TMC2130_n, stallGuard); 	}
bool Stepper_TMC2130::ot()			{ GET_REG(TMC2130_n, ot); 			}
bool Stepper_TMC2130::otpw()			{ GET_REG(TMC2130_n, otpw); 		}
bool Stepper_TMC2130::s2ga()			{ GET_REG(TMC2130_n, s2ga); 		}
bool Stepper_TMC2130::s2gb()			{ GET_REG(TMC2130_n, s2gb); 		}
bool Stepper_TMC2130::ola()			{ GET_REG(TMC2130_n, ola); 			}
bool Stepper_TMC2130::olb()			{ GET_REG(TMC2130_n, olb); 			}
bool Stepper_TMC2130::stst()			{ GET_REG(TMC2130_n, stst); 		}

uint32_t Stepper_TMC2208::DRV_STATUS() {
	return read(TMC2208_n::DRV_STATUS_t::address);
}

bool 		Stepper_TMC2208::otpw()		{ GET_REG(TMC2208_n, otpw); 		}
bool 		Stepper_TMC2208::ot() 		{ GET_REG(TMC2208_n, ot); 	 		}
bool 		Stepper_TMC2208::s2ga() 		{ GET_REG(TMC2208_n, s2ga); 		}
bool 		Stepper_TMC2208::s2gb() 		{ GET_REG(TMC2208_n, s2gb); 		}
bool 		Stepper_TMC2208::s2vsa() 	{ GET_REG(TMC2208_n, s2vsa);		}
bool 		Stepper_TMC2208::s2vsb() 	{ GET_REG(TMC2208_n, s2vsb);		}
bool 		Stepper_TMC2208::ola() 		{ GET_REG(TMC2208_n, ola);  		}
bool 		Stepper_TMC2208::olb() 		{ GET_REG(TMC2208_n, olb);  		}
bool 		Stepper_TMC2208::t120() 		{ GET_REG(TMC2208_n, t120); 		}
bool 		Stepper_TMC2208::t143() 		{ GET_REG(TMC2208_n, t143); 		}
bool 		Stepper_TMC2208::t150() 		{ GET_REG(TMC2208_n, t150); 		}
bool 		Stepper_TMC2208::t157() 		{ GET_REG(TMC2208_n, t157); 		}
uint16_t 	Stepper_TMC2208::cs_actual()	{ GET_REG(TMC2208_n, cs_actual);	}
bool 		Stepper_TMC2208::stealth() 	{ GET_REG(TMC2208_n, stealth);		}
bool 		Stepper_TMC2208::stst() 		{ GET_REG(TMC2208_n, stst); 		}
