#include "tle5012b.hpp"
#include "../../Stepper/TMC2130/tmc2130.hpp"
#include "../../Timer/timer.hpp"

void Tle5012b::setup()
{
    ENC_CS_OutputEnable();
    ENC_CS_Set();

    // float ZeroOffset = 0;
    // float displacementCount = 0;
    // bool almostCompleteCW = false;
    // bool almostCompleteCCW = false;
}

void Tle5012b::loop()
{
    
}

void Tle5012b::update(float rpm, bool dir)
{
    // Update the stored rpm and direction when notified by the Stepper
    this->rpm = rpm;
    this->dir = dir;
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
    
    if (angleValue<0)
    {
        angleValue = 360 + angleValue;
    }
}

float Tle5012b::calculateDisplacement(void)
{
    // double angle;
    // getAngleValue(angle);
    // angle = 360 - angle; // For testing. Reversed value is observed
    // direction_t direction = (direction_t)this->dir;
    
    // float displacement = (float)((angle/360.0) * 2);
    // switch(direction)
    // {
    //     case CLOCKWISE:
    //         if (displacement > (float)1.5)
    //         {
    //             almostCompleteCW =true;
    //         }
    //         else if (displacement < (float)0.5)
    //         {
    //             if(almostCompleteCW)
    //             {
    //                 almostCompleteCW = false;
    //                 displacementCount += 2;
    //             }
    //         }
            
    //         almostCompleteCCW = false;
    //         break;
            
    //     case ANTICLOCKWISE:
    //         if (displacement < (float)0.5)
    //         {
    //             almostCompleteCCW =true;
    //         }
    //         else if (displacement > (float)1.5)
    //         {
    //             if(almostCompleteCCW)
    //             {
    //                 almostCompleteCCW = false;
    //                 displacementCount -= 2;
    //             }
    //         }
    //         almostCompleteCW = false;
    //         break;
            
    //     default:
    //         break;
    // }

    // displacement += (displacementCount - ZeroOffset);
    // return displacement;

    static float lastAngle = 0.0f;  // Store the previous angle value
    static float totalDisplacement = 0.0f;  // Total displacement with factor of 2 applied

    double currentAngle = 0.0f;
    getAngleValue(currentAngle);

    // Calculate the difference between current and last angle (inverted to flip direction)
    float deltaAngle = lastAngle - currentAngle;  // Invert the reading by switching the subtraction

    // Handle crossing the 0-degree point (when transitioning between 359 -> 0 or 0 -> 359)
    if (deltaAngle > 180.0f) {
        deltaAngle -= 360.0f;  // Correct for the wraparound in CW direction
    } else if (deltaAngle < -180.0f) {
        deltaAngle += 360.0f;  // Correct for the wraparound in CCW direction
    }

    // Apply factor of 2 to full rotations
    totalDisplacement += (deltaAngle / 360.0f) * 2.0f;  // Increment displacement with factor of 2

    // Update the last angle for the next call
    lastAngle = currentAngle;

    // Return the total displacement with decimal values included
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
    
    // Logic triggering at high RPMs
    float minimumCoveredDistance = (rpm / 60.0) * 2 * STALL_DETECTION_MAX_TIME;
    minimumCoveredDistance -= 0.15;
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
