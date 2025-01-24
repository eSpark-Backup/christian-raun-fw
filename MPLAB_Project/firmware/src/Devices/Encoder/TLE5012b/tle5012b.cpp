#include "tle5012b.hpp"
#include "../../../Libraries/SoftSPI/SoftSPIB.h"
#include "../../Stepper/TMC2130/tmc2130.hpp"
#include "../../Timer/timer.hpp"

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

float Tle5012b::calculateDisplacement(void)
{
    static float lastAngle = 0.0f;  
    static float totalDisplacement = 0.0f;  

    double currentAngle = 0.0f;
    getAngleValue(currentAngle);

    float deltaAngle = lastAngle - currentAngle; 

    if (deltaAngle > 180.0f) {
        deltaAngle -= 360.0f;  // Correct for the wraparound in CW direction
    } else if (deltaAngle < -180.0f) {
        deltaAngle += 360.0f;  // Correct for the wraparound in CCW direction
    }

    totalDisplacement += (deltaAngle / 360.0f) * 2.0f;  

    lastAngle = currentAngle;

    return totalDisplacement - ZeroOffset;
}

bool Tle5012b::isMotorStalled()
{
    static float previousPosition = 0;
    static uint32_t previousMillis = 0;
    
    if (STOPPED == mStatus)
    {
        previousMillis = millis();
        previousPosition = calculateDisplacement();
        mStatus = RUNNING;
    }
    
    float minimumCoveredDistance = (rpm / 60.0) * 2 * STALL_DETECTION_MAX_TIME;
    minimumCoveredDistance -= 0.1; 
    uint32_t currentMillis = millis();
    
    if ((currentMillis - previousMillis) > TO_MS(STALL_DETECTION_MAX_TIME))
    {
        previousMillis = currentMillis;
        float currentPosition = calculateDisplacement();
        if (fabs(previousPosition - currentPosition) < minimumCoveredDistance)
        {
            return true;
        }
        else
        {
            previousPosition = currentPosition;
        }    
    }
    
    return false;
}

void Tle5012b::setZeroOffset()
{  
    float position = calculateDisplacement();
    ZeroOffset += position;
}
