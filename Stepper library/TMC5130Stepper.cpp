#include "TMCStepper.h"
#include "TMC_MACROS.h"

Stepper_TMC5130::Stepper_TMC5130(uint16_t pinCS, float RS, int8_t link) : Stepper_TMC2160(pinCS, RS, link)
  { defaults(); }
Stepper_TMC5130::Stepper_TMC5130(uint16_t pinCS, float RS, uint16_t pinMOSI, uint16_t pinMISO, uint16_t pinSCK, int8_t link):
  Stepper_TMC2160(pinCS, RS, pinMOSI, pinMISO, pinSCK, link)
  { defaults(); }
Stepper_TMC5130::Stepper_TMC5130(uint16_t pinCS, uint16_t pinMOSI, uint16_t pinMISO, uint16_t pinSCK, int8_t link) :
  Stepper_TMC2160(pinCS, default_RS, pinMOSI, pinMISO, pinSCK, link)
  { defaults(); }

void Stepper_TMC5130::begin() {
  Stepper_TMC2160::begin();

  XTARGET(0);
  XACTUAL(0);
  //while (( RAMP_STAT() & cfg.VZERO_bm) != cfg.VZERO_bm) {}
}

void Stepper_TMC5130::defaults() {
  OUTPUT_register.sr = 1;
  ENC_CONST_register.sr = 65536;
  //MSLUT0_register.sr = ???;
  //MSLUT1_register.sr = ???;
  //MSLUT2_register.sr = ???;
  //MSLUT3_register.sr = ???;
  //MSLUT4_register.sr = ???;
  //MSLUT5_register.sr = ???;
  //MSLUT6_register.sr = ???;
  //MSLUT7_register.sr = ???;
  //MSLUTSEL_register.sr = ???;
  //MSLUTSTART_register.start_sin = 0;
  //MSLUTSTART_register.start_sin90 = 247;
  PWMCONF_register.sr = 0x00050480;
}

void Stepper_TMC5130::push() {
    IHOLD_IRUN(IHOLD_IRUN_register.sr);
    TPOWERDOWN(TPOWERDOWN_register.sr);
    TPWMTHRS(TPWMTHRS_register.sr);
    GCONF(GCONF_register.sr);
    TCOOLTHRS(TCOOLTHRS_register.sr);
    THIGH(THIGH_register.sr);
    XDIRECT(XDIRECT_register.sr);
    VDCMIN(VDCMIN_register.sr);
    CHOPCONF(CHOPCONF_register.sr);
    COOLCONF(COOLCONF_register.sr);
    DCCTRL(DCCTRL_register.sr);
    PWMCONF(PWMCONF_register.sr);
    ENCM_CTRL(ENCM_CTRL_register.sr);
    DRV_CONF(DRV_CONF_register.sr);
    SLAVECONF(SLAVECONF_register.sr);
    TMC_OUTPUT(OUTPUT_register.sr);
    X_COMPARE(X_COMPARE_register.sr);
    RAMPMODE(RAMPMODE_register.sr);
    XACTUAL(XACTUAL_register.sr);
    VSTART(VSTART_register.sr);
    a1(A1_register.sr);
    v1(V1_register.sr);
    AMAX(AMAX_register.sr);
    VMAX(VMAX_register.sr);
    DMAX(DMAX_register.sr);
    d1(D1_register.sr);
    VSTOP(VSTOP_register.sr);
    TZEROWAIT(TZEROWAIT_register.sr);
    SW_MODE(SW_MODE_register.sr);
    ENCMODE(ENCMODE_register.sr);
    ENC_CONST(ENC_CONST_register.sr);
}

///////////////////////////////////////////////////////////////////////////////////////
// R: IFCNT
uint8_t Stepper_TMC5130::IFCNT() { return read(IFCNT_t::address); }
///////////////////////////////////////////////////////////////////////////////////////
// W: SLAVECONF
uint16_t Stepper_TMC5130::SLAVECONF() { return SLAVECONF_register.sr; }
void Stepper_TMC5130::SLAVECONF(uint16_t input) {
  SLAVECONF_register.sr = input;
  write(SLAVECONF_register.address, SLAVECONF_register.sr);
}
///////////////////////////////////////////////////////////////////////////////////////
// R: IOIN
uint32_t  Stepper_TMC5130::IOIN() {
  return read(TMC5130_n::IOIN_t::address);
}
bool    Stepper_TMC5130::refl_step()      { TMC5130_n::IOIN_t r{0}; r.sr = IOIN(); return r.refl_step; }
bool    Stepper_TMC5130::refr_dir()       { TMC5130_n::IOIN_t r{0}; r.sr = IOIN(); return r.refr_dir; }
bool    Stepper_TMC5130::encb_dcen_cfg4() { TMC5130_n::IOIN_t r{0}; r.sr = IOIN(); return r.encb_dcen_cfg4; }
bool    Stepper_TMC5130::enca_dcin_cfg5() { TMC5130_n::IOIN_t r{0}; r.sr = IOIN(); return r.enca_dcin_cfg5; }
bool    Stepper_TMC5130::drv_enn_cfg6()   { TMC5130_n::IOIN_t r{0}; r.sr = IOIN(); return r.drv_enn_cfg6; }
bool    Stepper_TMC5130::enc_n_dco()      { TMC5130_n::IOIN_t r{0}; r.sr = IOIN(); return r.enc_n_dco; }
bool    Stepper_TMC5130::sd_mode()        { TMC5130_n::IOIN_t r{0}; r.sr = IOIN(); return r.sd_mode; }
bool    Stepper_TMC5130::swcomp_in()      { TMC5130_n::IOIN_t r{0}; r.sr = IOIN(); return r.swcomp_in; }
uint8_t   Stepper_TMC5130::version()      { TMC5130_n::IOIN_t r{0}; r.sr = IOIN(); return r.version; }
///////////////////////////////////////////////////////////////////////////////////////
// W: OUTPUT
bool Stepper_TMC5130::TMC_OUTPUT() { return OUTPUT_register.sr; }
void Stepper_TMC5130::TMC_OUTPUT(bool input) {
  OUTPUT_register.sr = input;
  write(OUTPUT_register.address, OUTPUT_register.sr);
}
///////////////////////////////////////////////////////////////////////////////////////
// W: X_COMPARE
uint32_t Stepper_TMC5130::X_COMPARE() { return X_COMPARE_register.sr; }
void Stepper_TMC5130::X_COMPARE(uint32_t input) {
  X_COMPARE_register.sr = input;
  write(X_COMPARE_register.address, X_COMPARE_register.sr);
}
///////////////////////////////////////////////////////////////////////////////////////
// RW: RAMPMODE
uint8_t Stepper_TMC5130::RAMPMODE() { return read(RAMPMODE_register.address); }
void Stepper_TMC5130::RAMPMODE(uint8_t input) {
  RAMPMODE_register.sr = input;
  write(RAMPMODE_register.address, RAMPMODE_register.sr);
}
///////////////////////////////////////////////////////////////////////////////////////
// RW: XACTUAL
int32_t Stepper_TMC5130::XACTUAL() { return read(XACTUAL_register.address); }
void Stepper_TMC5130::XACTUAL(int32_t input) {
  write(XACTUAL_register.address, input);
}
///////////////////////////////////////////////////////////////////////////////////////
// R: VACTUAL
int32_t Stepper_TMC5130::VACTUAL() {
  uint32_t int24 = read(VACTUAL_t::address);
  if((int24 >> 23) & 0x01) {
    int24 |= 0xFF000000;
  }
  return int24;
}
///////////////////////////////////////////////////////////////////////////////////////
// W: VSTART
uint32_t Stepper_TMC5130::VSTART() { return VSTART_register.sr; }
void Stepper_TMC5130::VSTART(uint32_t input) {
  VSTART_register.sr = input;
  write(VSTART_register.address, VSTART_register.sr);
}
///////////////////////////////////////////////////////////////////////////////////////
// W: A1
uint16_t Stepper_TMC5130::a1() { return A1_register.sr; }
void Stepper_TMC5130::a1(uint16_t input) {
  A1_register.sr = input;
  write(A1_register.address, A1_register.sr);
}
///////////////////////////////////////////////////////////////////////////////////////
// W: V1
uint32_t Stepper_TMC5130::v1() { return V1_register.sr; }
void Stepper_TMC5130::v1(uint32_t input) {
  V1_register.sr = input;
  write(V1_register.address, V1_register.sr);
}
///////////////////////////////////////////////////////////////////////////////////////
// W: AMAX
uint16_t Stepper_TMC5130::AMAX() { return AMAX_register.sr; }
void Stepper_TMC5130::AMAX(uint16_t input) {
  AMAX_register.sr = input;
  write(AMAX_register.address, AMAX_register.sr);
}
///////////////////////////////////////////////////////////////////////////////////////
// W: VMAX
uint32_t Stepper_TMC5130::VMAX() { return VMAX_register.sr; }
void Stepper_TMC5130::VMAX(uint32_t input) {
  VMAX_register.sr = input;
  write(VMAX_register.address, VMAX_register.sr);
}
///////////////////////////////////////////////////////////////////////////////////////
// W: DMAX
uint16_t Stepper_TMC5130::DMAX() { return DMAX_register.sr; }
void Stepper_TMC5130::DMAX(uint16_t input) {
  DMAX_register.sr = input;
  write(DMAX_register.address, DMAX_register.sr);
}
///////////////////////////////////////////////////////////////////////////////////////
// W: D1
uint16_t Stepper_TMC5130::d1() { return D1_register.sr; }
void Stepper_TMC5130::d1(uint16_t input) {
  D1_register.sr = input;
  write(D1_register.address, D1_register.sr);
}
///////////////////////////////////////////////////////////////////////////////////////
// W: VSTOP
uint32_t Stepper_TMC5130::VSTOP() { return VSTOP_register.sr; }
void Stepper_TMC5130::VSTOP(uint32_t input) {
  if (input == 0 && RAMPMODE() == 0) return;
  VSTOP_register.sr = input;
  write(VSTOP_register.address, VSTOP_register.sr);
}
///////////////////////////////////////////////////////////////////////////////////////
// W: TZEROWAIT
uint16_t Stepper_TMC5130::TZEROWAIT() { return TZEROWAIT_register.sr; }
void Stepper_TMC5130::TZEROWAIT(uint16_t input) {
  TZEROWAIT_register.sr = input;
  write(TZEROWAIT_register.address, TZEROWAIT_register.sr);
}
///////////////////////////////////////////////////////////////////////////////////////
// RW: XTARGET
int32_t Stepper_TMC5130::XTARGET() { return read(XTARGET_t::address); }
void Stepper_TMC5130::XTARGET(int32_t input) {
  write(XTARGET_t::address, input);
}
///////////////////////////////////////////////////////////////////////////////////////
// R: XLATCH
uint32_t Stepper_TMC5130::XLATCH() { return read(XLATCH_t::address); }
///////////////////////////////////////////////////////////////////////////////////////
// RW: X_ENC
int32_t Stepper_TMC5130::X_ENC() { return read(X_ENC_t::address); }
void Stepper_TMC5130::X_ENC(int32_t input) {
  write(X_ENC_t::address, input);
}
///////////////////////////////////////////////////////////////////////////////////////
// W: ENC_CONST
uint32_t Stepper_TMC5130::ENC_CONST() { return ENC_CONST_register.sr; }
void Stepper_TMC5130::ENC_CONST(uint32_t input) {
  ENC_CONST_register.sr = input;
  write(ENC_CONST_register.address, ENC_CONST_register.sr);
}
///////////////////////////////////////////////////////////////////////////////////////
// R: ENC_STATUS
bool Stepper_TMC5130::ENC_STATUS() { return read(ENC_STATUS_t::address); }
///////////////////////////////////////////////////////////////////////////////////////
// R: ENC_LATCH
uint32_t Stepper_TMC5130::ENC_LATCH() { return read(ENC_LATCH_t::address); }
