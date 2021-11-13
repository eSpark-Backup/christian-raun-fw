#include "TMCStepper.h"
#include "TMC_MACROS.h"

#define SET_REG(SETTING) SW_MODE_register.SETTING = B; write(SW_MODE_register.address, SW_MODE_register.sr)
#define GET_REG(SETTING) SW_MODE_t r{0}; r.sr = SW_MODE(); return r.SETTING

// SW_MODE
uint32_t Stepper_TMC5130::SW_MODE() {
	return read(SW_MODE_register.address);
}
void Stepper_TMC5130::SW_MODE(uint32_t input) {
	SW_MODE_register.sr = input;
	write(SW_MODE_register.address, SW_MODE_register.sr);
}

void Stepper_TMC5130::stop_l_enable(bool B)		{ SET_REG(stop_l_enable);	}
void Stepper_TMC5130::stop_r_enable(bool B)		{ SET_REG(stop_r_enable);	}
void Stepper_TMC5130::pol_stop_l(bool B)			{ SET_REG(pol_stop_l);		}
void Stepper_TMC5130::pol_stop_r(bool B)			{ SET_REG(pol_stop_r);		}
void Stepper_TMC5130::swap_lr(bool B)			{ SET_REG(swap_lr);			}
void Stepper_TMC5130::latch_l_active(bool B)		{ SET_REG(latch_l_active);	}
void Stepper_TMC5130::latch_l_inactive(bool B)	{ SET_REG(latch_l_inactive);}
void Stepper_TMC5130::latch_r_active(bool B)		{ SET_REG(latch_r_active);	}
void Stepper_TMC5130::latch_r_inactive(bool B)	{ SET_REG(latch_r_inactive);}
void Stepper_TMC5130::en_latch_encoder(bool B)	{ SET_REG(en_latch_encoder);}
void Stepper_TMC5130::sg_stop(bool B)			{ SET_REG(sg_stop);			}
void Stepper_TMC5130::en_softstop(bool B)		{ SET_REG(en_softstop);		}

bool Stepper_TMC5130::stop_r_enable()			{ GET_REG(stop_r_enable);	}
bool Stepper_TMC5130::pol_stop_l()				{ GET_REG(pol_stop_l);		}
bool Stepper_TMC5130::pol_stop_r()				{ GET_REG(pol_stop_r);		}
bool Stepper_TMC5130::swap_lr()					{ GET_REG(swap_lr);			}
bool Stepper_TMC5130::latch_l_active()			{ GET_REG(latch_l_active);	}
bool Stepper_TMC5130::latch_l_inactive()			{ GET_REG(latch_l_inactive);}
bool Stepper_TMC5130::latch_r_active()			{ GET_REG(latch_r_active);	}
bool Stepper_TMC5130::latch_r_inactive()			{ GET_REG(latch_r_inactive);}
bool Stepper_TMC5130::en_latch_encoder()			{ GET_REG(en_latch_encoder);}
bool Stepper_TMC5130::sg_stop()					{ GET_REG(sg_stop);			}
bool Stepper_TMC5130::en_softstop()				{ GET_REG(en_softstop);		}
