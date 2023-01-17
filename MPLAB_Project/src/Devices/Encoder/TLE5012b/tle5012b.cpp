#include "tle5012b.hpp"

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
    
    uint8_t txbuffer[2] = { (uint8_t)(command >> 8), (uint8_t)(command & 0x00FF) }; 
    uint8_t rxbuffer[2] = {0}; 
    ENC_CS_Clear();
    SERCOM4_SPI_Write(txbuffer,2);
    while(SERCOM4_SPI_IsBusy());
    
    SERCOM4_SPI_Read(rxbuffer,2);
    while(SERCOM4_SPI_IsBusy());
    ENC_CS_Set();
    rawData = (rxbuffer[0] << 8) | rxbuffer[1];
    
    rawData = (rawData & (DELETE_BIT_15));
    //check if the value received is positive or negative
    if (rawData & CHECK_BIT_14)
    {
        rawData = rawData - CHANGE_UINT_TO_INT_15;
    }
    int16_t rawAnglevalue = rawData;
    angleValue = (ANGLE_360_VAL / POW_2_15) * ((double) rawAnglevalue);
}