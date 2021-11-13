#include "TMCStepper.h"
#include "TMC_MACROS.h"

#define SET_REG(SETTING) PWMCONF_register.SETTING = B; write(PWMCONF_register.address, PWMCONF_register.sr)
#define GET_REG(SETTING) return PWMCONF_register.SETTING

// PWMCONF
uint32_t Stepper_TMC2130::PWMCONF() { return PWMCONF_register.sr; }
void Stepper_TMC2130::PWMCONF(uint32_t input) {
	PWMCONF_register.sr = input;
	write(PWMCONF_register.address, PWMCONF_register.sr);
}

void Stepper_TMC2130::pwm_ampl(		uint8_t B )	{ SET_REG(pwm_ampl);		}
void Stepper_TMC2130::pwm_grad(		uint8_t B )	{ SET_REG(pwm_grad);		}
void Stepper_TMC2130::pwm_freq(		uint8_t B )	{ SET_REG(pwm_freq);		}
void Stepper_TMC2130::pwm_autoscale(	bool 	B )	{ SET_REG(pwm_autoscale);	}
void Stepper_TMC2130::pwm_symmetric(	bool 	B )	{ SET_REG(pwm_symmetric);	}
void Stepper_TMC2130::freewheel(		uint8_t B )	{ SET_REG(freewheel);		}

uint8_t Stepper_TMC2130::pwm_ampl()		{ GET_REG(pwm_ampl);		}
uint8_t Stepper_TMC2130::pwm_grad()		{ GET_REG(pwm_grad);		}
uint8_t Stepper_TMC2130::pwm_freq()		{ GET_REG(pwm_freq);		}
bool 	Stepper_TMC2130::pwm_autoscale()	{ GET_REG(pwm_autoscale);	}
bool 	Stepper_TMC2130::pwm_symmetric()	{ GET_REG(pwm_symmetric);	}
uint8_t Stepper_TMC2130::freewheel()		{ GET_REG(freewheel);		}

uint32_t Stepper_TMC2160::PWMCONF() {
	return PWMCONF_register.sr;
}
void Stepper_TMC2160::PWMCONF(uint32_t input) {
	PWMCONF_register.sr = input;
	write(PWMCONF_register.address, PWMCONF_register.sr);
}

void Stepper_TMC2160::pwm_ofs		( uint8_t B ) { PWMCONF_register.pwm_ofs = B; 		write(PWMCONF_register.address, PWMCONF_register.sr); }
void Stepper_TMC2160::pwm_grad		( uint8_t B ) { PWMCONF_register.pwm_grad = B; 		write(PWMCONF_register.address, PWMCONF_register.sr); }
void Stepper_TMC2160::pwm_freq		( uint8_t B ) { PWMCONF_register.pwm_freq = B; 		write(PWMCONF_register.address, PWMCONF_register.sr); }
void Stepper_TMC2160::pwm_autoscale	( bool 	  B ) { PWMCONF_register.pwm_autoscale = B; write(PWMCONF_register.address, PWMCONF_register.sr); }
void Stepper_TMC2160::pwm_autograd	( bool    B ) { PWMCONF_register.pwm_autograd = B; 	write(PWMCONF_register.address, PWMCONF_register.sr); }
void Stepper_TMC2160::freewheel		( uint8_t B ) { PWMCONF_register.freewheel = B; 	write(PWMCONF_register.address, PWMCONF_register.sr); }
void Stepper_TMC2160::pwm_reg		( uint8_t B ) { PWMCONF_register.pwm_reg = B; 		write(PWMCONF_register.address, PWMCONF_register.sr); }
void Stepper_TMC2160::pwm_lim		( uint8_t B ) { PWMCONF_register.pwm_lim = B; 		write(PWMCONF_register.address, PWMCONF_register.sr); }

uint8_t Stepper_TMC2160::pwm_ofs()		{ return PWMCONF_register.pwm_ofs;		}
uint8_t Stepper_TMC2160::pwm_grad()		{ return PWMCONF_register.pwm_grad;		}
uint8_t Stepper_TMC2160::pwm_freq()		{ return PWMCONF_register.pwm_freq;		}
bool 	Stepper_TMC2160::pwm_autoscale()	{ return PWMCONF_register.pwm_autoscale;}
bool 	Stepper_TMC2160::pwm_autograd()	{ return PWMCONF_register.pwm_autograd;	}
uint8_t Stepper_TMC2160::freewheel()		{ return PWMCONF_register.freewheel;	}
uint8_t Stepper_TMC2160::pwm_reg()		{ return PWMCONF_register.pwm_reg;		}
uint8_t Stepper_TMC2160::pwm_lim()		{ return PWMCONF_register.pwm_lim;		}

uint32_t Stepper_TMC2208::PWMCONF() {
	return read(PWMCONF_register.address);
}
void Stepper_TMC2208::PWMCONF(uint32_t input) {
	PWMCONF_register.sr = input;
	write(PWMCONF_register.address, PWMCONF_register.sr);
}

void Stepper_TMC2208::pwm_ofs		( uint8_t B ) { PWMCONF_register.pwm_ofs = B; write(PWMCONF_register.address, PWMCONF_register.sr); }
void Stepper_TMC2208::pwm_grad		( uint8_t B ) { PWMCONF_register.pwm_grad = B; write(PWMCONF_register.address, PWMCONF_register.sr); }
void Stepper_TMC2208::pwm_freq		( uint8_t B ) { PWMCONF_register.pwm_freq = B; write(PWMCONF_register.address, PWMCONF_register.sr); }
void Stepper_TMC2208::pwm_autoscale	( bool 	  B ) { PWMCONF_register.pwm_autoscale = B; write(PWMCONF_register.address, PWMCONF_register.sr); }
void Stepper_TMC2208::pwm_autograd	( bool    B ) { PWMCONF_register.pwm_autograd = B; write(PWMCONF_register.address, PWMCONF_register.sr); }
void Stepper_TMC2208::freewheel		( uint8_t B ) { PWMCONF_register.freewheel = B; write(PWMCONF_register.address, PWMCONF_register.sr); }
void Stepper_TMC2208::pwm_reg		( uint8_t B ) { PWMCONF_register.pwm_reg = B; write(PWMCONF_register.address, PWMCONF_register.sr); }
void Stepper_TMC2208::pwm_lim		( uint8_t B ) { PWMCONF_register.pwm_lim = B; write(PWMCONF_register.address, PWMCONF_register.sr); }

uint8_t Stepper_TMC2208::pwm_ofs()		{ TMC2208_n::PWMCONF_t r{0}; r.sr = PWMCONF(); return r.pwm_ofs;		}
uint8_t Stepper_TMC2208::pwm_grad()		{ TMC2208_n::PWMCONF_t r{0}; r.sr = PWMCONF(); return r.pwm_grad;		}
uint8_t Stepper_TMC2208::pwm_freq()		{ TMC2208_n::PWMCONF_t r{0}; r.sr = PWMCONF(); return r.pwm_freq;		}
bool 	Stepper_TMC2208::pwm_autoscale()	{ TMC2208_n::PWMCONF_t r{0}; r.sr = PWMCONF(); return r.pwm_autoscale;	}
bool 	Stepper_TMC2208::pwm_autograd()	{ TMC2208_n::PWMCONF_t r{0}; r.sr = PWMCONF(); return r.pwm_autograd;	}
uint8_t Stepper_TMC2208::freewheel()		{ TMC2208_n::PWMCONF_t r{0}; r.sr = PWMCONF(); return r.freewheel;		}
uint8_t Stepper_TMC2208::pwm_reg()		{ TMC2208_n::PWMCONF_t r{0}; r.sr = PWMCONF(); return r.pwm_reg;		}
uint8_t Stepper_TMC2208::pwm_lim()		{ TMC2208_n::PWMCONF_t r{0}; r.sr = PWMCONF(); return r.pwm_lim;		}
