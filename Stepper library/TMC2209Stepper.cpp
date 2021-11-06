#include "TMCStepper.h"

uint32_t Stepper_TMC2209::IOIN() {
	return read(TMC2209_n::IOIN_t::address);
}
bool Stepper_TMC2209::enn()			{ TMC2209_n::IOIN_t r{0}; r.sr = IOIN(); return r.enn;		}
bool Stepper_TMC2209::ms1()			{ TMC2209_n::IOIN_t r{0}; r.sr = IOIN(); return r.ms1;		}
bool Stepper_TMC2209::ms2()			{ TMC2209_n::IOIN_t r{0}; r.sr = IOIN(); return r.ms2;		}
bool Stepper_TMC2209::diag()			{ TMC2209_n::IOIN_t r{0}; r.sr = IOIN(); return r.diag;		}
bool Stepper_TMC2209::pdn_uart()		{ TMC2209_n::IOIN_t r{0}; r.sr = IOIN(); return r.pdn_uart;	}
bool Stepper_TMC2209::step()			{ TMC2209_n::IOIN_t r{0}; r.sr = IOIN(); return r.step;		}
bool Stepper_TMC2209::spread_en()	{ TMC2209_n::IOIN_t r{0}; r.sr = IOIN(); return r.spread_en;}
bool Stepper_TMC2209::dir()			{ TMC2209_n::IOIN_t r{0}; r.sr = IOIN(); return r.dir;		}
uint8_t Stepper_TMC2209::version() 	{ TMC2209_n::IOIN_t r{0}; r.sr = IOIN(); return r.version;	}

void Stepper_TMC2209::push() {
	IHOLD_IRUN(IHOLD_IRUN_register.sr);
	TPOWERDOWN(TPOWERDOWN_register.sr);
	TPWMTHRS(TPWMTHRS_register.sr);
	GCONF(GCONF_register.sr);
	SLAVECONF(SLAVECONF_register.sr);
	VACTUAL(VACTUAL_register.sr);
	CHOPCONF(CHOPCONF_register.sr);
	PWMCONF(PWMCONF_register.sr);
	TCOOLTHRS(TCOOLTHRS_register.sr);
	SGTHRS(SGTHRS_register.sr);
	COOLCONF(COOLCONF_register.sr);
}

void Stepper_TMC2209::SGTHRS(uint8_t input) {
	SGTHRS_register.sr = input;
	write(SGTHRS_register.address, SGTHRS_register.sr);
}
uint8_t Stepper_TMC2209::SGTHRS() {
	return SGTHRS_register.sr;
}

// W: TCOOLTHRS
uint32_t Stepper_TMC2209::TCOOLTHRS() { return TCOOLTHRS_register.sr; }
void Stepper_TMC2209::TCOOLTHRS(uint32_t input) {
  TCOOLTHRS_register.sr = input;
  write(TCOOLTHRS_register.address, TCOOLTHRS_register.sr);
}

uint16_t Stepper_TMC2209::SG_RESULT() {
	return read(TMC2209_n::SG_RESULT_t::address);
}
