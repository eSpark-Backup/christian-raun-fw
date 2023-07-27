#pragma once

typedef enum 
{
    STOPPED,
    RUNNING,       
} motorStatus;

class IEncoder 
{
    protected:
        motorStatus mStatus = STOPPED;
        
    public:  
        
        virtual bool isMotorStalled() = 0;
        virtual void setZeroOffset() = 0;
        virtual void motorStopped()
        {
            mStatus = STOPPED;
        }
        virtual ~IEncoder() {}
};