#include "TMCStepper.h"
#include "TMC_MACROS.h"

int8_t Stepper_TMC2130::chain_length = 0;
uint32_t Stepper_TMC2130::spi_speed = 16000000/8;

Stepper_TMC2130::Stepper_TMC2130(uint16_t pinCS, float RS, int8_t link) :
  TMCStepper(RS),
  _pinCS(pinCS),
  link_index(link)
  {
    defaults();

    if (link > chain_length)
      chain_length = link;
  }

Stepper_TMC2130::Stepper_TMC2130(uint16_t pinCS, uint16_t pinMOSI, uint16_t pinMISO, uint16_t pinSCK, int8_t link) :
  TMCStepper(default_RS),
  _pinCS(pinCS),
  link_index(link)
  {
    SW_SPIClass *SW_SPI_Obj = new SW_SPIClass(pinMOSI, pinMISO, pinSCK);
    TMC_SW_SPI = SW_SPI_Obj;
    defaults();

    if (link > chain_length)
      chain_length = link;
  }

Stepper_TMC2130::Stepper_TMC2130(uint16_t pinCS, float RS, uint16_t pinMOSI, uint16_t pinMISO, uint16_t pinSCK, int8_t link) :
  TMCStepper(RS),
  _pinCS(pinCS),
  link_index(link)
  {
    SW_SPIClass *SW_SPI_Obj = new SW_SPIClass(pinMOSI, pinMISO, pinSCK);
    TMC_SW_SPI = SW_SPI_Obj;
    defaults();

    if (link > chain_length)
      chain_length = link;
  }

void Stepper_TMC2130::defaults() {
  //MSLUT0_register.sr = ???;
  //MSLUT1_register.sr = ???;
  //MSLUT2_register.sr = ???;
  //MSLUT3_register.sr = ???;
  //MSLUT4_register.sr = ???;
  //MSLUT5_register.sr = ???;
  //MSLUT6_register.sr = ???;
  //MSLUT7_register.sr = ???;
  //MSLUTSTART_register.start_sin90 = 247;
  PWMCONF_register.sr = 0x00050480;
}

__attribute__((weak))
void Stepper_TMC2130::setSPISpeed(uint32_t speed) {
  spi_speed = speed;
}

__attribute__((weak))
void Stepper_TMC2130::switchCSpin(bool state) {
  digitalWrite(_pinCS, state);
}

__attribute__((weak))
void Stepper_TMC2130::beginTransaction() {
  if (TMC_SW_SPI == nullptr) {
    SPI.beginTransaction(SPISettings(spi_speed, MSBFIRST, SPI_MODE3));
  }
}
__attribute__((weak))
void Stepper_TMC2130::endTransaction() {
  if (TMC_SW_SPI == nullptr) {
    SPI.endTransaction();
  }
}

__attribute__((weak))
uint8_t Stepper_TMC2130::transfer(const uint8_t data) {
  uint8_t out = 0;
  if (TMC_SW_SPI != nullptr) {
    out = TMC_SW_SPI->transfer(data);
  }
  else {
    out = SPI.transfer(data);
  }
  return out;
}

void Stepper_TMC2130::transferEmptyBytes(const uint8_t n) {
  for (uint8_t i = 0; i < n; i++) {
    transfer(0x00);
  }
}

__attribute__((weak))
uint32_t Stepper_TMC2130::read(uint8_t addressByte) {
  uint32_t out = 0UL;
  int8_t i = 1;

  beginTransaction();
  switchCSpin(LOW);
  transfer(addressByte);
  // Clear SPI
  transferEmptyBytes(4);

  // Shift the written data to the correct driver in chain
  // Default link_index = -1 and no shifting happens
  while(i < link_index) {
    transferEmptyBytes(5);
    i++;
  }

  switchCSpin(HIGH);
  switchCSpin(LOW);

  // Shift data from target link into the last one...
  while(i < chain_length) {
    transferEmptyBytes(5);
    i++;
  }

  // ...and once more to MCU
  status_response = transfer(addressByte); // Send the address byte again
  out  = transfer(0x00);
  out <<= 8;
  out |= transfer(0x00);
  out <<= 8;
  out |= transfer(0x00);
  out <<= 8;
  out |= transfer(0x00);

  endTransaction();
  switchCSpin(HIGH);
  return out;
}

__attribute__((weak))
void Stepper_TMC2130::write(uint8_t addressByte, uint32_t config) {
  addressByte |= TMC_WRITE;
  int8_t i = 1;

  beginTransaction();
  switchCSpin(LOW);
  status_response = transfer(addressByte);
  transfer(config>>24);
  transfer(config>>16);
  transfer(config>>8);
  transfer(config);

  // Shift the written data to the correct driver in chain
  // Default link_index = -1 and no shifting happens
  while(i < link_index) {
    transferEmptyBytes(5);
    i++;
  }

  endTransaction();
  switchCSpin(HIGH);
}

void Stepper_TMC2130::begin() {
  //set pins
  pinMode(_pinCS, OUTPUT);
  switchCSpin(HIGH);

  if (TMC_SW_SPI != nullptr) TMC_SW_SPI->init();

  GCONF(GCONF_register.sr);
  CHOPCONF(CHOPCONF_register.sr);
  COOLCONF(COOLCONF_register.sr);
  PWMCONF(PWMCONF_register.sr);
  IHOLD_IRUN(IHOLD_IRUN_register.sr);

  toff(8); //off_time(8);
  tbl(1); //blank_time(24);
}

/**
 *  Helper functions
 */

bool Stepper_TMC2130::isEnabled() { return !drv_enn_cfg6() && toff(); }

void Stepper_TMC2130::push() {
  GCONF(GCONF_register.sr);
  IHOLD_IRUN(IHOLD_IRUN_register.sr);
  TPOWERDOWN(TPOWERDOWN_register.sr);
  TPWMTHRS(TPWMTHRS_register.sr);
  TCOOLTHRS(TCOOLTHRS_register.sr);
  THIGH(THIGH_register.sr);
  XDIRECT(XDIRECT_register.sr);
  VDCMIN(VDCMIN_register.sr);
  CHOPCONF(CHOPCONF_register.sr);
  COOLCONF(COOLCONF_register.sr);
  DCCTRL(DCCTRL_register.sr);
  PWMCONF(PWMCONF_register.sr);
  ENCM_CTRL(ENCM_CTRL_register.sr);
}

///////////////////////////////////////////////////////////////////////////////////////
// R: IOIN
uint32_t  Stepper_TMC2130::IOIN()    { return read(IOIN_t::address); }
bool Stepper_TMC2130::step()         { IOIN_t r{0}; r.sr = IOIN(); return r.step; }
bool Stepper_TMC2130::dir()          { IOIN_t r{0}; r.sr = IOIN(); return r.dir; }
bool Stepper_TMC2130::dcen_cfg4()    { IOIN_t r{0}; r.sr = IOIN(); return r.dcen_cfg4; }
bool Stepper_TMC2130::dcin_cfg5()    { IOIN_t r{0}; r.sr = IOIN(); return r.dcin_cfg5; }
bool Stepper_TMC2130::drv_enn_cfg6() { IOIN_t r{0}; r.sr = IOIN(); return r.drv_enn_cfg6; }
bool Stepper_TMC2130::dco()          { IOIN_t r{0}; r.sr = IOIN(); return r.dco; }
uint8_t Stepper_TMC2130::version()   { IOIN_t r{0}; r.sr = IOIN(); return r.version; }
///////////////////////////////////////////////////////////////////////////////////////
// W: TCOOLTHRS
uint32_t Stepper_TMC2130::TCOOLTHRS() { return TCOOLTHRS_register.sr; }
void Stepper_TMC2130::TCOOLTHRS(uint32_t input) {
  TCOOLTHRS_register.sr = input;
  write(TCOOLTHRS_register.address, TCOOLTHRS_register.sr);
}
///////////////////////////////////////////////////////////////////////////////////////
// W: THIGH
uint32_t Stepper_TMC2130::THIGH() { return THIGH_register.sr; }
void Stepper_TMC2130::THIGH(uint32_t input) {
  THIGH_register.sr = input;
  write(THIGH_register.address, THIGH_register.sr);
}
///////////////////////////////////////////////////////////////////////////////////////
// RW: XDIRECT
uint32_t Stepper_TMC2130::XDIRECT() {
  return read(XDIRECT_register.address);
}
void Stepper_TMC2130::XDIRECT(uint32_t input) {
  XDIRECT_register.sr = input;
  write(XDIRECT_register.address, XDIRECT_register.sr);
}
void Stepper_TMC2130::coil_A(int16_t B)  { XDIRECT_register.coil_A = B; write(XDIRECT_register.address, XDIRECT_register.sr); }
void Stepper_TMC2130::coil_B(int16_t B)  { XDIRECT_register.coil_B = B; write(XDIRECT_register.address, XDIRECT_register.sr); }
int16_t Stepper_TMC2130::coil_A()        { XDIRECT_t r{0}; r.sr = XDIRECT(); return r.coil_A; }
int16_t Stepper_TMC2130::coil_B()        { XDIRECT_t r{0}; r.sr = XDIRECT(); return r.coil_B; }
///////////////////////////////////////////////////////////////////////////////////////
// W: VDCMIN
uint32_t Stepper_TMC2130::VDCMIN() { return VDCMIN_register.sr; }
void Stepper_TMC2130::VDCMIN(uint32_t input) {
  VDCMIN_register.sr = input;
  write(VDCMIN_register.address, VDCMIN_register.sr);
}
///////////////////////////////////////////////////////////////////////////////////////
// RW: DCCTRL
void Stepper_TMC2130::DCCTRL(uint32_t input) {
	DCCTRL_register.sr = input;
	write(DCCTRL_register.address, DCCTRL_register.sr);
}
void Stepper_TMC2130::dc_time(uint16_t input) {
	DCCTRL_register.dc_time = input;
	write(DCCTRL_register.address, DCCTRL_register.sr);
}
void Stepper_TMC2130::dc_sg(uint8_t input) {
	DCCTRL_register.dc_sg = input;
	write(DCCTRL_register.address, DCCTRL_register.sr);
}

uint32_t Stepper_TMC2130::DCCTRL() {
	return read(DCCTRL_register.address);
}
uint16_t Stepper_TMC2130::dc_time() {
	DCCTRL_t r{0};
  r.sr = DCCTRL();
	return r.dc_time;
}
uint8_t Stepper_TMC2130::dc_sg() {
	DCCTRL_t r{0};
  r.sr = DCCTRL();
	return r.dc_sg;
}
///////////////////////////////////////////////////////////////////////////////////////
// R: PWM_SCALE
uint8_t Stepper_TMC2130::PWM_SCALE() { return read(PWM_SCALE_t::address); }
///////////////////////////////////////////////////////////////////////////////////////
// W: ENCM_CTRL
uint8_t Stepper_TMC2130::ENCM_CTRL() { return ENCM_CTRL_register.sr; }
void Stepper_TMC2130::ENCM_CTRL(uint8_t input) {
  ENCM_CTRL_register.sr = input;
  write(ENCM_CTRL_register.address, ENCM_CTRL_register.sr);
}
void Stepper_TMC2130::inv(bool B)      { ENCM_CTRL_register.inv = B;       write(ENCM_CTRL_register.address, ENCM_CTRL_register.sr); }
void Stepper_TMC2130::maxspeed(bool B) { ENCM_CTRL_register.maxspeed  = B; write(ENCM_CTRL_register.address, ENCM_CTRL_register.sr); }
bool Stepper_TMC2130::inv()            { return ENCM_CTRL_register.inv; }
bool Stepper_TMC2130::maxspeed()       { return ENCM_CTRL_register.maxspeed; }
///////////////////////////////////////////////////////////////////////////////////////
// R: LOST_STEPS
uint32_t Stepper_TMC2130::LOST_STEPS() { return read(LOST_STEPS_t::address); }

void Stepper_TMC2130::sg_current_decrease(uint8_t value) {
  switch(value) {
    case 32: sedn(0b00); break;
    case  8: sedn(0b01); break;
    case  2: sedn(0b10); break;
    case  1: sedn(0b11); break;
  }
}
uint8_t Stepper_TMC2130::sg_current_decrease() {
  switch(sedn()) {
    case 0b00: return 32;
    case 0b01: return  8;
    case 0b10: return  2;
    case 0b11: return  1;
  }
  return 0;
}
