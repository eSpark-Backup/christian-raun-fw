#include "TMCStepper.h"
#include "TMC_MACROS.h"

#define SET_REG(SETTING) ENCMODE_register.SETTING = B; write(ENCMODE_register.address, ENCMODE_register.sr);
#define GET_REG(SETTING) ENCMODE_t r{0}; r.sr = ENCMODE(); return r.SETTING;

// ENCMODE
uint32_t Stepper_TMC5130::ENCMODE() {
	return read(ENCMODE_register.address);
}
void Stepper_TMC5130::ENCMODE(uint32_t input) {
	ENCMODE_register.sr = input;
	write(ENCMODE_register.address, ENCMODE_register.sr);
}

void Stepper_TMC5130::pol_a(bool B)			{ SET_REG(pol_a);			}
void Stepper_TMC5130::pol_b(bool B)			{ SET_REG(pol_b);			}
void Stepper_TMC5130::pol_n(bool B)			{ SET_REG(pol_n);			}
void Stepper_TMC5130::ignore_ab(bool B)		{ SET_REG(ignore_ab);		}
void Stepper_TMC5130::clr_cont(bool B)		{ SET_REG(clr_cont);		}
void Stepper_TMC5130::clr_once(bool B)		{ SET_REG(clr_once);		}
void Stepper_TMC5130::pos_edge(bool B)		{ SET_REG(pos_edge);		}
void Stepper_TMC5130::neg_edge(bool B)		{ SET_REG(neg_edge);		}
void Stepper_TMC5130::clr_enc_x(bool B)		{ SET_REG(clr_enc_x);		}
void Stepper_TMC5130::latch_x_act(bool B)	{ SET_REG(latch_x_act);		}
void Stepper_TMC5130::enc_sel_decimal(bool B){ SET_REG(enc_sel_decimal);	}

bool Stepper_TMC5130::pol_a()			{ GET_REG(pol_a);			}
bool Stepper_TMC5130::pol_b()			{ GET_REG(pol_b);			}
bool Stepper_TMC5130::pol_n()			{ GET_REG(pol_n);			}
bool Stepper_TMC5130::ignore_ab()		{ GET_REG(ignore_ab);		}
bool Stepper_TMC5130::clr_cont()			{ GET_REG(clr_cont);		}
bool Stepper_TMC5130::clr_once()			{ GET_REG(clr_once);		}
bool Stepper_TMC5130::pos_edge()			{ GET_REG(pos_edge);		}
bool Stepper_TMC5130::neg_edge()			{ GET_REG(neg_edge);		}
bool Stepper_TMC5130::clr_enc_x()		{ GET_REG(clr_enc_x);		}
bool Stepper_TMC5130::latch_x_act()		{ GET_REG(latch_x_act);		}
bool Stepper_TMC5130::enc_sel_decimal()	{ GET_REG(enc_sel_decimal);	}
