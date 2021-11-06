#include "TMCStepper.h"
#include "TMC_MACROS.h"

#define SET_REG(SETTING) CHOPCONF_register.SETTING = B; write(CHOPCONF_register.address, CHOPCONF_register.sr)

// CHOPCONF
uint32_t Stepper_TMC2130::CHOPCONF() {
	return read(CHOPCONF_register.address);
}
void Stepper_TMC2130::CHOPCONF(uint32_t input) {
	CHOPCONF_register.sr = input;
	write(CHOPCONF_register.address, CHOPCONF_register.sr);
}

void Stepper_TMC2130::toff(		uint8_t B )	{ SET_REG(toff);	}
void Stepper_TMC2130::hstrt(		uint8_t B )	{ SET_REG(hstrt);	}
void Stepper_TMC2130::hend(		uint8_t B )	{ SET_REG(hend);	}
//void Stepper_TMC2130::fd(		uint8_t B )	{ SET_REG(fd);		}
void Stepper_TMC2130::disfdcc(	bool 	B )	{ SET_REG(disfdcc);	}
void Stepper_TMC2130::rndtf(		bool 	B )	{ SET_REG(rndtf);	}
void Stepper_TMC2130::chm(		bool 	B )	{ SET_REG(chm);		}
void Stepper_TMC2130::tbl(		uint8_t B )	{ SET_REG(tbl);		}
void Stepper_TMC2130::vsense(	bool 	B )	{ SET_REG(vsense);	}
void Stepper_TMC2130::vhighfs(	bool 	B )	{ SET_REG(vhighfs);	}
void Stepper_TMC2130::vhighchm(	bool 	B )	{ SET_REG(vhighchm);}
void Stepper_TMC2130::sync(		uint8_t B )	{ SET_REG(sync);	}
void Stepper_TMC2130::mres(		uint8_t B )	{ SET_REG(mres);	}
void Stepper_TMC2130::intpol(	bool 	B )	{ SET_REG(intpol);	}
void Stepper_TMC2130::dedge(		bool 	B )	{ SET_REG(dedge);	}
void Stepper_TMC2130::diss2g(	bool 	B )	{ SET_REG(diss2g);	}

uint8_t Stepper_TMC2130::toff()		{ CHOPCONF_t r{0}; r.sr = CHOPCONF(); return r.toff;	}
uint8_t Stepper_TMC2130::hstrt()		{ CHOPCONF_t r{0}; r.sr = CHOPCONF(); return r.hstrt;	}
uint8_t Stepper_TMC2130::hend()		{ CHOPCONF_t r{0}; r.sr = CHOPCONF(); return r.hend;	}
//uint8_t Stepper_TMC2130::fd()		{ CHOPCONF_t r{0}; r.sr = CHOPCONF(); return r.fd;		}
bool 	Stepper_TMC2130::disfdcc()	{ CHOPCONF_t r{0}; r.sr = CHOPCONF(); return r.disfdcc;	}
bool 	Stepper_TMC2130::rndtf()		{ CHOPCONF_t r{0}; r.sr = CHOPCONF(); return r.rndtf;	}
bool 	Stepper_TMC2130::chm()		{ CHOPCONF_t r{0}; r.sr = CHOPCONF(); return r.chm;		}
uint8_t Stepper_TMC2130::tbl()		{ CHOPCONF_t r{0}; r.sr = CHOPCONF(); return r.tbl;		}
bool 	Stepper_TMC2130::vsense()	{ CHOPCONF_t r{0}; r.sr = CHOPCONF(); return r.vsense;	}
bool 	Stepper_TMC2130::vhighfs()	{ CHOPCONF_t r{0}; r.sr = CHOPCONF(); return r.vhighfs;	}
bool 	Stepper_TMC2130::vhighchm()	{ CHOPCONF_t r{0}; r.sr = CHOPCONF(); return r.vhighchm;}
uint8_t Stepper_TMC2130::sync()		{ CHOPCONF_t r{0}; r.sr = CHOPCONF(); return r.sync;	}
uint8_t Stepper_TMC2130::mres()		{ CHOPCONF_t r{0}; r.sr = CHOPCONF(); return r.mres;	}
bool 	Stepper_TMC2130::intpol()	{ CHOPCONF_t r{0}; r.sr = CHOPCONF(); return r.intpol;	}
bool 	Stepper_TMC2130::dedge()		{ CHOPCONF_t r{0}; r.sr = CHOPCONF(); return r.dedge;	}
bool 	Stepper_TMC2130::diss2g()	{ CHOPCONF_t r{0}; r.sr = CHOPCONF(); return r.diss2g;	}

void Stepper_TMC5160::diss2vs(bool B){ SET_REG(diss2vs); }
void Stepper_TMC5160::tpfd(uint8_t B){ SET_REG(tpfd);	}
bool Stepper_TMC5160::diss2vs()		{ CHOPCONF_t r{0}; r.sr = CHOPCONF(); return r.diss2vs; }
uint8_t Stepper_TMC5160::tpfd()		{ CHOPCONF_t r{0}; r.sr = CHOPCONF(); return r.tpfd;	}

void Stepper_TMC2208::CHOPCONF(uint32_t input) {
	CHOPCONF_register.sr = input;
	write(CHOPCONF_register.address, CHOPCONF_register.sr);
}
uint32_t Stepper_TMC2208::CHOPCONF() {
	return read(CHOPCONF_register.address);
}
void Stepper_TMC2208::toff	( uint8_t  B )	{ SET_REG(toff); 	}
void Stepper_TMC2208::hstrt	( uint8_t  B )	{ SET_REG(hstrt); 	}
void Stepper_TMC2208::hend	( uint8_t  B )	{ SET_REG(hend); 	}
void Stepper_TMC2208::tbl	( uint8_t  B )	{ SET_REG(tbl); 	}
void Stepper_TMC2208::vsense	( bool     B )	{ SET_REG(vsense); 	}
void Stepper_TMC2208::mres	( uint8_t  B )	{ SET_REG(mres); 	}
void Stepper_TMC2208::intpol	( bool     B )	{ SET_REG(intpol); 	}
void Stepper_TMC2208::dedge	( bool     B )	{ SET_REG(dedge); 	}
void Stepper_TMC2208::diss2g	( bool     B )	{ SET_REG(diss2g); 	}
void Stepper_TMC2208::diss2vs( bool     B )	{ SET_REG(diss2vs); }

uint8_t Stepper_TMC2208::toff()		{ TMC2208_n::CHOPCONF_t r{0}; r.sr = CHOPCONF(); return r.toff; 	}
uint8_t Stepper_TMC2208::hstrt()		{ TMC2208_n::CHOPCONF_t r{0}; r.sr = CHOPCONF(); return r.hstrt; 	}
uint8_t Stepper_TMC2208::hend()		{ TMC2208_n::CHOPCONF_t r{0}; r.sr = CHOPCONF(); return r.hend; 	}
uint8_t Stepper_TMC2208::tbl()		{ TMC2208_n::CHOPCONF_t r{0}; r.sr = CHOPCONF(); return r.tbl;	 	}
bool 	Stepper_TMC2208::vsense()	{ TMC2208_n::CHOPCONF_t r{0}; r.sr = CHOPCONF(); return r.vsense; 	}
uint8_t Stepper_TMC2208::mres()		{ TMC2208_n::CHOPCONF_t r{0}; r.sr = CHOPCONF(); return r.mres; 	}
bool 	Stepper_TMC2208::intpol()	{ TMC2208_n::CHOPCONF_t r{0}; r.sr = CHOPCONF(); return r.intpol; 	}
bool 	Stepper_TMC2208::dedge()		{ TMC2208_n::CHOPCONF_t r{0}; r.sr = CHOPCONF(); return r.dedge; 	}
bool 	Stepper_TMC2208::diss2g()	{ TMC2208_n::CHOPCONF_t r{0}; r.sr = CHOPCONF(); return r.diss2g; 	}
bool 	Stepper_TMC2208::diss2vs()	{ TMC2208_n::CHOPCONF_t r{0}; r.sr = CHOPCONF(); return r.diss2vs; 	}

#define GET_REG_2660(SETTING) return CHOPCONF_register.SETTING;

uint32_t Stepper_TMC2660::CHOPCONF() { return CHOPCONF_register.sr; }
void Stepper_TMC2660::CHOPCONF(uint32_t data) {
  CHOPCONF_register.sr = data;
  write(CHOPCONF_register.address, CHOPCONF_register.sr);
}

void Stepper_TMC2660::toff(uint8_t B) 	{
	SET_REG(toff);
	if (B>0) _savedToff = B;
}
void Stepper_TMC2660::hstrt(uint8_t B) 	{ SET_REG(hstrt); 	}
void Stepper_TMC2660::hend(uint8_t B) 	{ SET_REG(hend);	}
void Stepper_TMC2660::hdec(uint8_t B) 	{ SET_REG(hdec);	}
void Stepper_TMC2660::rndtf(bool B) 	{ SET_REG(rndtf);	}
void Stepper_TMC2660::chm(bool B) 	{ SET_REG(chm);	}
void Stepper_TMC2660::tbl(uint8_t B) 	{ SET_REG(tbl);	}

uint8_t Stepper_TMC2660::toff() 	{ GET_REG_2660(toff);	}
uint8_t Stepper_TMC2660::hstrt() 	{ GET_REG_2660(hstrt);	}
uint8_t Stepper_TMC2660::hend() { GET_REG_2660(hend);	}
uint8_t Stepper_TMC2660::hdec() 	{ GET_REG_2660(hdec);	}
bool Stepper_TMC2660::rndtf() { GET_REG_2660(rndtf);	}
bool Stepper_TMC2660::chm() 	{ GET_REG_2660(chm);	}
uint8_t Stepper_TMC2660::tbl() { GET_REG_2660(tbl);	}
