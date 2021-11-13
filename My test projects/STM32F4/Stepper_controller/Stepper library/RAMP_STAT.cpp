#include "TMCStepper.h"
#include "TMC_MACROS.h"

#define GET_REG(SETTING) RAMP_STAT_t r{0}; r.sr = RAMP_STAT(); return r.SETTING

uint32_t Stepper_TMC5130::RAMP_STAT() {
	return read(RAMP_STAT_t::address);
}

bool Stepper_TMC5130::status_stop_l()		{ GET_REG(status_stop_l);		}
bool Stepper_TMC5130::status_stop_r()		{ GET_REG(status_stop_r);		}
bool Stepper_TMC5130::status_latch_l()		{ GET_REG(status_latch_l);		}
bool Stepper_TMC5130::status_latch_r()		{ GET_REG(status_latch_r);		}
bool Stepper_TMC5130::event_stop_l()			{ GET_REG(event_stop_l);		}
bool Stepper_TMC5130::event_stop_r()			{ GET_REG(event_stop_r);		}
bool Stepper_TMC5130::event_stop_sg()		{ GET_REG(event_stop_sg);		}
bool Stepper_TMC5130::event_pos_reached()	{ GET_REG(event_pos_reached);	}
bool Stepper_TMC5130::velocity_reached()		{ GET_REG(velocity_reached);	}
bool Stepper_TMC5130::position_reached()		{ GET_REG(position_reached);	}
bool Stepper_TMC5130::vzero()				{ GET_REG(vzero);	 			}
bool Stepper_TMC5130::t_zerowait_active()	{ GET_REG(t_zerowait_active);	}
bool Stepper_TMC5130::second_move()			{ GET_REG(second_move);			}
bool Stepper_TMC5130::status_sg()			{ GET_REG(status_sg);	 		}
