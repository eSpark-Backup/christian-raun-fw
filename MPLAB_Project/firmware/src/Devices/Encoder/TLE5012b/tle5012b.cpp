#include "tle5012b.hpp"
#include "../../../Libraries/SoftSPI/SoftSPIB.h"
SoftSPIB SPI;

void Tle5012b::setup()
{
        ENC_CS_OutputEnable();
        ENC_CS_Set();
}

void Tle5012b::loop()
{
    
}

void Tle5012b::getAngleValue(double &angleValue)
{
    uint16_t command = READ_SENSOR | REG_AVAL | UPD_low | SAFE_high;
    uint16_t rawData=0;
    
    PORT_PinOutputEnable(ENC_DATA0_PIN);
    
    PORT_PinClear(ENC_CS_PIN); 

    SPI.transfer16(command);

    PORT_PinInputEnable(ENC_DATA0_PIN);
//    for(uint16_t x=0;x<50000;x++);
    rawData = SPI.transfer16(0x0000);

    PORT_PinSet(ENC_CS_PIN);
    
    rawData = (rawData & (DELETE_BIT_15));
    //check if the value received is positive or negative
    if (rawData & CHECK_BIT_14)
    {
        rawData = rawData - CHANGE_UINT_TO_INT_15;
    }
    int16_t rawAnglevalue = rawData;
    angleValue = (ANGLE_360_VAL / POW_2_15) * ((double) rawAnglevalue);
    
    if (angleValue<0)
    {
        angleValue = 360 + angleValue;
    }
}