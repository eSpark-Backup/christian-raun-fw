#include "TMCStepper.h"
#include "TMC_MACROS.h"

#define SET_REG(SETTING) GCONF_register.SETTING = B; write(GCONF_register.address, GCONF_register.sr)

// GCONF
uint32_t Stepper_TMC2130::GCONF() {
	return read(GCONF_register.address);
}
void Stepper_TMC2130::GCONF(uint32_t input) {
	GCONF_register.sr = input;
	write(GCONF_register.address, GCONF_register.sr);
}

void Stepper_TMC2130::I_scale_analog(bool B)			{ SET_REG(i_scale_analog);			}
void Stepper_TMC2130::internal_Rsense(bool B)		{ SET_REG(internal_rsense);			}
void Stepper_TMC2130::en_pwm_mode(bool B)			{ SET_REG(en_pwm_mode);				}
void Stepper_TMC2130::enc_commutation(bool B)		{ SET_REG(enc_commutation);			}
void Stepper_TMC2130::shaft(bool B) 					{ SET_REG(shaft);					}
void Stepper_TMC2130::diag0_error(bool B) 			{ SET_REG(diag0_error);				}
void Stepper_TMC2130::diag0_otpw(bool B) 			{ SET_REG(diag0_otpw);				}
void Stepper_TMC2130::diag0_stall(bool B) 			{ SET_REG(diag0_stall);				}
void Stepper_TMC2130::diag1_stall(bool B) 			{ SET_REG(diag1_stall);				}
void Stepper_TMC2130::diag1_index(bool B) 			{ SET_REG(diag1_index);				}
void Stepper_TMC2130::diag1_onstate(bool B) 			{ SET_REG(diag1_onstate);			}
void Stepper_TMC2130::diag1_steps_skipped(bool B) 	{ SET_REG(diag1_steps_skipped);		}
void Stepper_TMC2130::diag0_int_pushpull(bool B) 	{ SET_REG(diag0_int_pushpull);		}
void Stepper_TMC2130::diag1_pushpull(bool B) 		{ SET_REG(diag1_poscomp_pushpull);	}
void Stepper_TMC2130::small_hysteresis(bool B) 		{ SET_REG(small_hysteresis);		}
void Stepper_TMC2130::stop_enable(bool B) 			{ SET_REG(stop_enable);				}
void Stepper_TMC2130::direct_mode(bool B) 			{ SET_REG(direct_mode);				}

bool Stepper_TMC2130::I_scale_analog()				{ GCONF_t r{0}; r.sr = GCONF(); return r.i_scale_analog;		}
bool Stepper_TMC2130::internal_Rsense()				{ GCONF_t r{0}; r.sr = GCONF(); return r.internal_rsense;		}
bool Stepper_TMC2130::en_pwm_mode()					{ GCONF_t r{0}; r.sr = GCONF(); return r.en_pwm_mode;			}
bool Stepper_TMC2130::enc_commutation()				{ GCONF_t r{0}; r.sr = GCONF(); return r.enc_commutation;		}
bool Stepper_TMC2130::shaft() 						{ GCONF_t r{0}; r.sr = GCONF(); return r.shaft;					}
bool Stepper_TMC2130::diag0_error() 					{ GCONF_t r{0}; r.sr = GCONF(); return r.diag0_error;			}
bool Stepper_TMC2130::diag0_otpw() 					{ GCONF_t r{0}; r.sr = GCONF(); return r.diag0_otpw;			}
bool Stepper_TMC2130::diag0_stall() 					{ GCONF_t r{0}; r.sr = GCONF(); return r.diag0_stall;			}
bool Stepper_TMC2130::diag1_stall() 					{ GCONF_t r{0}; r.sr = GCONF(); return r.diag1_stall;			}
bool Stepper_TMC2130::diag1_index() 					{ GCONF_t r{0}; r.sr = GCONF(); return r.diag1_index;			}
bool Stepper_TMC2130::diag1_onstate() 				{ GCONF_t r{0}; r.sr = GCONF(); return r.diag1_onstate;			}
bool Stepper_TMC2130::diag1_steps_skipped() 			{ GCONF_t r{0}; r.sr = GCONF(); return r.diag1_steps_skipped;	}
bool Stepper_TMC2130::diag0_int_pushpull() 			{ GCONF_t r{0}; r.sr = GCONF(); return r.diag0_int_pushpull;	}
bool Stepper_TMC2130::diag1_pushpull()		 		{ GCONF_t r{0}; r.sr = GCONF(); return r.diag1_poscomp_pushpull;}
bool Stepper_TMC2130::small_hysteresis() 			{ GCONF_t r{0}; r.sr = GCONF(); return r.small_hysteresis;		}
bool Stepper_TMC2130::stop_enable() 					{ GCONF_t r{0}; r.sr = GCONF(); return r.stop_enable;			}
bool Stepper_TMC2130::direct_mode() 					{ GCONF_t r{0}; r.sr = GCONF(); return r.direct_mode;			}

/*
bit 18 not implemented:
test_mode 0:
Normal operation 1:
Enable analog test output on pin DCO. IHOLD[1..0] selects the function of DCO:
0…2: T120, DAC, VDDH Attention:
Not for user, set to 0 for normal operation!
*/

void Stepper_TMC5160::recalibrate(bool B)			{ SET_REG(recalibrate); 			}
void Stepper_TMC5160::faststandstill(bool B)			{ SET_REG(faststandstill); 			}
void Stepper_TMC5160::multistep_filt(bool B)			{ SET_REG(multistep_filt); 			}
bool Stepper_TMC5160::recalibrate()					{ GCONF_t r{0}; r.sr = GCONF(); return r.recalibrate;	}
bool Stepper_TMC5160::faststandstill()				{ GCONF_t r{0}; r.sr = GCONF(); return r.faststandstill;	}
bool Stepper_TMC5160::multistep_filt()				{ GCONF_t r{0}; r.sr = GCONF(); return r.multistep_filt;	}

uint32_t Stepper_TMC2208::GCONF() {
	return read(GCONF_register.address);
}
void Stepper_TMC2208::GCONF(uint32_t input) {
	GCONF_register.sr = input;
	write(GCONF_register.address, GCONF_register.sr);
}

void Stepper_TMC2208::I_scale_analog(bool B)		{ SET_REG(i_scale_analog);	}
void Stepper_TMC2208::internal_Rsense(bool B)	{ SET_REG(internal_rsense);	}
void Stepper_TMC2208::en_spreadCycle(bool B)		{ SET_REG(en_spreadcycle);	}
void Stepper_TMC2208::shaft(bool B) 				{ SET_REG(shaft);			}
void Stepper_TMC2208::index_otpw(bool B)			{ SET_REG(index_otpw);		}
void Stepper_TMC2208::index_step(bool B)			{ SET_REG(index_step);		}
void Stepper_TMC2208::pdn_disable(bool B)		{ SET_REG(pdn_disable);		}
void Stepper_TMC2208::mstep_reg_select(bool B)	{ SET_REG(mstep_reg_select);}
void Stepper_TMC2208::multistep_filt(bool B)		{ SET_REG(multistep_filt);	}

bool Stepper_TMC2208::I_scale_analog()	{ TMC2208_n::GCONF_t r{0}; r.sr = GCONF(); return r.i_scale_analog;		}
bool Stepper_TMC2208::internal_Rsense()	{ TMC2208_n::GCONF_t r{0}; r.sr = GCONF(); return r.internal_rsense;	}
bool Stepper_TMC2208::en_spreadCycle()	{ TMC2208_n::GCONF_t r{0}; r.sr = GCONF(); return r.en_spreadcycle;		}
bool Stepper_TMC2208::shaft()			{ TMC2208_n::GCONF_t r{0}; r.sr = GCONF(); return r.shaft;				}
bool Stepper_TMC2208::index_otpw()		{ TMC2208_n::GCONF_t r{0}; r.sr = GCONF(); return r.index_otpw;			}
bool Stepper_TMC2208::index_step()		{ TMC2208_n::GCONF_t r{0}; r.sr = GCONF(); return r.index_step;			}
bool Stepper_TMC2208::pdn_disable()		{ TMC2208_n::GCONF_t r{0}; r.sr = GCONF(); return r.pdn_disable;		}
bool Stepper_TMC2208::mstep_reg_select()	{ TMC2208_n::GCONF_t r{0}; r.sr = GCONF(); return r.mstep_reg_select;	}
bool Stepper_TMC2208::multistep_filt()	{ TMC2208_n::GCONF_t r{0}; r.sr = GCONF(); return r.multistep_filt;		}
