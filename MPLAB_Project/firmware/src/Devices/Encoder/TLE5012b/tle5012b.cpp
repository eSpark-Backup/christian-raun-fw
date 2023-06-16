#include "tle5012b.hpp"
#include "../../../Libraries/SoftSPI/SoftSPIB.h"
#include "../../Stepper/TMC2130/tmc2130.hpp"

SoftSPIB SPI;
float displacementCount = 0;
bool almostCompleteCW = false;
bool almostCompleteCCW = false;

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

float Tle5012b::calculateDisplacement(void)
{
    double angle;
    getAngleValue(angle);
    direction dir = Tmc2130::dir;
    
    float displacement = (float)((angle/360.0) * 2);
    switch(dir)
    {
        case CLOCKWISE:
            if (displacement > (float)1.5)
            {
                almostCompleteCW =true;
            }
            else if (displacement < (float)0.5)
            {
                if(almostCompleteCW)
                {
                    almostCompleteCW = false;
                    displacementCount += 2;
                }
            }
            
            almostCompleteCCW = false;
            break;
            
        case ANTICLOCKWISE:
            if (displacement < (float)0.5)
            {
                almostCompleteCCW =true;
            }
            else if (displacement > (float)1.5)
            {
                if(almostCompleteCCW)
                {
                    almostCompleteCCW = false;
                    displacementCount -= 2;
                }
            }
            almostCompleteCW = false;
            break;
            
        default:
            break;
    }

    displacement += (displacementCount - ZeroOffset);
    return displacement;
}

bool Tle5012b::isMotorStalled(void)
{
    float currentPosition = calculateDisplacement();
    static float previousPosition = calculateDisplacement();
    
    static uint32_t currentMillis=0, previousMillis = millis();
    if (operationEnd)
    {
        previousMillis = millis();
        previousPosition = calculateDisplacement();
    }
    currentMillis = millis();
    
    if ((currentMillis - previousMillis) > TO_MS(0.4))
    {
        previousMillis = currentMillis;
        if (fabs(previousPosition - currentPosition) < 0.3)
        {
            return true;
        }
        else
        {
            previousPosition = currentPosition;
        }    
    }
    operationEnd = false;
    
    return false;
}

void Tle5012b::setZeroOffset()
{  
    float position = calculateDisplacement();
    ZeroOffset += position;
}