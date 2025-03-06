#include "tmc2130.hpp"
#include "../../Encoder/TLE5012b/tle5012b.hpp"
#include "../../../Libraries/print/print.hpp"

#define STEPPER_ITM_PORT    0

#define TIMER_RESOLUTION_NS 16.666666667e-9

#define FULLSTEP        256
#define MICROSTEP       16
#define VALUE_24BIT     16777216.0      // 2^24 = 16777216
#define CPU_FREQ        CPU_CLOCK_FREQUENCY
#define VMAX(rpm)       (((rpm)/60.0) * (MICROSTEP * (360.0/1.8)) * (VALUE_24BIT/CPU_FREQ))
#define TSTEP_CALC(rpm) (((VALUE_24BIT/VMAX(rpm)) * (MICROSTEP/(double)FULLSTEP)))

volatile uint32_t maxToggleCount=0;
volatile uint32_t toggleCounter=0;

volatile ErrorFlags motorErrors;

void Tmc2130::setup(TMC2160Stepper* motorDriver, IEncoder* encoder, dataOutPacket* dataOut)
{
    PWMCallbackArgs* args = new PWMCallbackArgs;
    args->stepper = this;
    args->dataOut = dataOut;
    this->rpmSequenceStatus = false;
    this->dataOut = dataOut;

    TC4_TimerCallbackRegister(tc4Callback, (uintptr_t) args);
    // TCC1_PWMCallbackRegister(pwmCallback, (uintptr_t) args);         // ISR getting triggerred wrong number of times
    this->encoder = encoder;
    this->driver = motorDriver;

    motorErrors.error = 0;
    
    driver->enable();
    driver->begin();
    driver->toff(5);
    driver->blank_time(24);
    driver->microsteps(16);
    driver->rms_current(1100);
    driver->en_pwm_mode(true);
    driver->pwm_autoscale(true);
    driver->sfilt(false);
    driver->THIGH(0);
    driver->semin(5);
    driver->semax(2);
    driver->sedn(0b01);

    driver->diag0_otpw(true);
}

void Tmc2130::loop()
{
    toggleCounter++;
}

void Tmc2130::run(rampSettings* rs)
{  
    if (isRunning())
        return;
    if (isRPMSequenceRunning())
        return;
    
    if( (0 == rs->rampDelay) | (0 == rs->time))
        return;
        
    if (0 == rs->displacement)
        return;
    
    if(!calculateRamp(rs))
        return;

    this->dir = rs->dir;
    run(true);
}

void Tmc2130::run(bool operationStart)
{   
    setRPMSequenceStatus(true);

    static uint32_t n;
    if (operationStart)
    {
        n = 0;
    }
    maxToggleCount =0;
    static bool downCount = false;
    uint32_t steps = displacementRamp[n] * STEPS_PER_MM;
    
    run(rampRPMArr[n], this->dir, steps);
    if(rampSteps == n)
    {
        downCount = true;
    }
    else if(0 == n)
    {
        downCount = false;
    }
    
    if(downCount)
        n--;
    else 
        n++;
}

void Tmc2130::run(float rpm, direction_t dir, uint32_t steps)
{    
    if(steps != maxToggleCount)
    {
        if (!isRunning())
        {   
            if (!rpm)
            {
                return;
            }
            maxToggleCount = steps;
            if (maxToggleCount)
            {
                run(rpm, dir);
            }
        }
    } 
}

void Tmc2130::run(float rpm, direction_t dir)
 {
    PORT_PinWrite(DIR_PIN, dir);
    // TCC1_PWMStop();
    // TC4_TimerStop();

    
    uint32_t preScaler, tc4Period;
    uint32_t tStep = TSTEP_CALC(rpm);
    float frequency = toFrequency(rpm);
    // calculate TCC1 period for PWM generation
    // Prescaler (period+1) = (Timer clock freq)/(required freq)
    // (Timer clock freq) is the clock freq assigned by MCC, TCC0/1 is assigned GCLK0 which taking its source from FDPLL0
    uint32_t periodPWM = ((tcc1BaseClkFreq)/(frequency)) - 1;         // Need to remove the magic number and retrieve TCC1 peripheral clock freq from registers
    
    float completeTime = (maxToggleCount/frequency);
    calculatePrescaler(completeTime, &preScaler, &tc4Period);
    
    tc4PrescalerSet(preScaler);
    TC4_Timer32bitPeriodSet(tc4Period);
    
    TCC1_PWM24bitPeriodSet(periodPWM);
    TCC1_PWM24bitDutySet(TCC1_CHANNEL2,((periodPWM)/2));
    
    ITM_Printf(STEPPER_ITM_PORT, "Starting motor with RPM = %.2f(%d)\t", rpm, tStep);
    
    TC4_TimerStart();
    TCC1_PWMStart();

    int8_t sgtVal = calculate_sgt(rpm);
    driver->sgt(sgtVal);
    ITM_Printf(STEPPER_ITM_PORT, "Setting sgt val: %d.\n", sgtVal);
    setStallDetection(true);
    
    notifyObservers(rpm, dir);

    rampTmcSet = isRPMSequenceRunning();
}

void Tmc2130::stop(void)
{
    TCC1_PWMStop();
    TC4_TimerStop();
    TC4_Timer32bitPeriodSet(0);

    setStallDetection(false);
    // driver->diag1_stall(false);
    encoder->motorStopped();
}

int8_t map(int value, int in_min, int in_max, int out_min, int out_max)
{
    return ((value > in_max) || (value < in_min)) ? ((value > in_max) ? out_max : out_min) : (value - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
}

void tc4PrescalerSet(uint32_t scaler)
{
    /* Configure counter mode & prescaler */
    TC4_REGS->COUNT32.TC_CTRLA = TC_CTRLA_MODE_COUNT32 | (scaler << TC_CTRLA_PRESCALER_Pos) | TC_CTRLA_PRESCSYNC_PRESC ;
    while((TC4_REGS->COUNT32.TC_SYNCBUSY) != 0U)
    {
        /* Wait for Write Synchronization */
    }
}

void calculatePrescaler(float time, uint32_t* scaler, uint32_t* period)
{
    uint64_t ticks = time / TIMER_RESOLUTION_NS;

    uint32_t max_ticks = 0xFFFFFFFF;
    uint32_t prescaler = 1;

    // Apply prescaler if needed
    while (ticks > max_ticks) {
        prescaler *= 2; // Typically prescalers are powers of 2 (e.g., 1, 2, 4, 8, ...)
        if((prescaler==32)||(prescaler==128)||(prescaler==512))
        {
            prescaler *= 2;
        }
        ticks = time / (TIMER_RESOLUTION_NS * prescaler);
    }
    *period = ticks;

    switch (prescaler) {
        case 1:    *scaler = TC_CTRLA_PRESCALER_DIV1_Val; break;
        case 2:    *scaler = TC_CTRLA_PRESCALER_DIV2_Val; break;
        case 4:    *scaler = TC_CTRLA_PRESCALER_DIV4_Val; break;
        case 8:    *scaler = TC_CTRLA_PRESCALER_DIV8_Val; break;
        case 16:   *scaler = TC_CTRLA_PRESCALER_DIV16_Val; break;
        case 64:   *scaler = TC_CTRLA_PRESCALER_DIV64_Val; break;
        case 256:  *scaler = TC_CTRLA_PRESCALER_DIV256_Val; break;
        case 1024: *scaler = TC_CTRLA_PRESCALER_DIV1024_Val; break;
        default:   *scaler = TC_CTRLA_PRESCALER_DIV1_Val; // Default to DIV1 in case of error
    }
}

int8_t calculate_sgt(int rpm)
{
    double RPM_min = 25.0;    // Lowest RPM
    double RPM_max = 200.0;   // Highest RPM
    int S_min = -15;          // Sensitivity at high RPM (least sensitive)
    int S_max = 64;           // Sensitivity at low RPM (most sensitive)
    double k = 3.5;           // Exponential decay rate (tune as needed)
    
    // Ensure RPM is within range
    if (rpm < RPM_min) rpm = RPM_min;
    if (rpm > RPM_max) rpm = RPM_max;

    double sensitivity;

    if(rpm<150)
    {
        // Normalized RPM range for exponential scaling
        double normalizedRPM = (rpm - RPM_min) / (RPM_max - RPM_min);
    
        // Compute sensitivity using exponential decay
        double expTerm = std::exp(-k * normalizedRPM);
        sensitivity = S_min + (S_max - S_min) * expTerm;
    }
    else
    {

    }

    // Convert to integer (rounding)
    return static_cast<int>(std::round(sensitivity));
    // return map(rpm, 0, 200, 20, -15);
}

bool Tmc2130::calculateRamp(rampSettings* rs)
{
    bool isRampValid = true;
        
    float requiredRotations = rs->displacement / displacementFactor;
    float requiredRPM = (requiredRotations / rs->time) * 60;
    float rampRPM = requiredRPM / rampSteps;
    float timePerStep = rs->rampDelay / rampSteps;
    float displacementPerStep = timePerStep * (rampRPM / 60) * displacementFactor;
    float totalDisplacementPerRamp = 0;
    for (int j = 1; j <= rampSteps; j++)
    {
        displacementRamp[j-1] = displacementPerStep * j;
        totalDisplacementPerRamp += displacementRamp[j-1];
        rampRPMArr[j-1] = rampRPM *j;
    }
    float requiredDisplacementWithoutRamps = rs->displacement - (totalDisplacementPerRamp * 2);
    displacementRamp[rampSteps] = requiredDisplacementWithoutRamps;
    float timeWithoutRamps = rs->time - (rs->rampDelay * 2);
    float requiredRotationsWithoutRamps = requiredDisplacementWithoutRamps / displacementFactor;
    float requiredRPMAfterWithoutRamps = (requiredRotationsWithoutRamps / timeWithoutRamps) * 60;
    rampRPMArr[rampSteps] = requiredRPMAfterWithoutRamps;

    ITM_Printf(STEPPER_ITM_PORT, "Calculated ramp array.\n");
    for(int i=0; i<=rampSteps; i++)
    {
        ITM_Printf(STEPPER_ITM_PORT, "rampRPMArr[%d]: %0.0f\tdisplacementRamp[%d]: %0.3f", i, rampRPMArr[i], i, displacementRamp[i]);
        if((rampRPMArr[i] > maxRPM) || (rampRPMArr[i] < (minRPM-1)))
        {
            // isRampValid = false;
            ITM_Printf(STEPPER_ITM_PORT, "\tInvalid rpm calculated.");
            this->dataOut->motorDiagnostic = INVALID_RAMP_SEQUENCE;
            isRampValid = false;
        }
        ITM_Printf(STEPPER_ITM_PORT, "\n");
    }

    if(isRampValid)
    {
        uint32_t val;
        val = ((TSTEP_CALC(rampRPMArr[rampSteps-1]))>0x21C) ? 0x21C : (TSTEP_CALC(rampRPMArr[rampSteps-1]));
        driver->TCOOLTHRS(val);
        ITM_Printf(STEPPER_ITM_PORT, "TCOOLTHRS(val)\t %d\n", val);
        val = ((TSTEP_CALC(rampRPMArr[rampSteps-1]-1))<0) ? 0 : (TSTEP_CALC(rampRPMArr[rampSteps-1]-1));
        driver->THIGH(val);
        ITM_Printf(STEPPER_ITM_PORT, "THIGH(val)\t %d\n", val);
    }

    return isRampValid;
}

/* Timer Interrupt handler */
void tc4Callback(TC_TIMER_STATUS status, uintptr_t context)
{
    PWMCallbackArgs* args = (PWMCallbackArgs*)context;
    Tmc2130* stepper = args->stepper;
    dataOutPacket* dataOut = args->dataOut;
    stepper->stop();
    if(stepper->isRPMSequenceRunning())
    {
        while(stepper->driver->stallCMDFlag != INAPPLICABLE) {  }
        if (!stepper->isRunning())
        {
            stepper->run();
            stepper->incrementRampCount();
            if(((rampSteps * 2)) == stepper->getRampCount() )
            {
                stepper->resetRampCount();
                stepper->setRPMSequenceStatus(false);
                dataOut->deviceStatus = RAMP_SEQUENCE_COMPLETED;
            }
        }
    }
}

// // NOT UTILIZED; Replaced by tc4Callback()
// void pwmCallback(TC_TIMER_STATUS status, uintptr_t context)
// {
//     static uint32_t rampStepsCount = 0;
//     PWMCallbackArgs* args = (PWMCallbackArgs*)context;
//     Tmc2130* stepper = args->stepper;
//     dataOutPacket* dataOut = args->dataOut;
//
//     // TC_TIMER_STATUS intFlag = (status & TCC_INTFLAG_OVF_Msk);
//     // if(TCC_INTFLAG_OVF_Msk == intFlag)      // if callback is from OVF interrupt
//     if(TCC_INTFLAG_MC2_Msk == status)      // if callback is from MC2 interrupt
//     {
//         stepper->loop();
//         if(stepper->isRPMSequenceRunning())
//         {
//             if (!stepper->isRunning())
//             {    
//                 stepper->run();
//                 rampStepsCount++;
//                 if(((rampSteps * 2)) == rampStepsCount )
//                 {
//                     rampStepsCount = 0;
//                     stepper->setRPMSequenceStatus(false);
//                     dataOut->deviceStatus = RAMP_SEQUENCE_COMPLETED;
//                 }
//             }
//         }
//     }
// }

bool Tmc2130::isRunning(void)
{
    // return (TC4_REGS->COUNT16.TC_CTRLA & TC_CTRLA_ENABLE_Msk);
    // uint32_t state  = TCC1_REGS->TCC_CTRLA & TCC_CTRLA_ENABLE_Msk;
    // if(state)
    // {
    //     motorErrors.flag.encoderStallFlag = encoder->isMotorStalled();
    // }
    return (TCC1_REGS->TCC_CTRLA & TCC_CTRLA_ENABLE_Msk);
    // return state;
}

bool Tmc2130::isRPMSequenceRunning() {
    return this->rpmSequenceStatus;
}

void Tmc2130::setRPMSequenceStatus(bool status) {
    if(!status)
        this->rampTmcSet = false;
    this->rpmSequenceStatus = status;            
}

void Tmc2130::setStallDetection(bool flag)
{   
    driver->stallCMDFlag = (flag) ? STALL_DETECTION_ENABLED : STALL_DETECTION_DISABLED;
    driver->diag1_stall(flag);
}

void Tmc2130::resetMaxToggleCount(void)
{
    maxToggleCount = 0;
}

void Tmc2130::incrementRampCount()
{
    rampStepsCount++;
}

void Tmc2130::resetRampCount()
{
    rampStepsCount = 0;
}

uint32_t Tmc2130::getRampCount()
{
    return rampStepsCount;
}

void Tmc2130::setEncoderStallFlag(uint8_t flag)
{
    motorErrors.flag.encoderStallFlag = (flag) ? encoder->isMotorStalled() : flag & 0x01;
    if(motorErrors.flag.encoderStallFlag)
    {
        ITM_Printf(STEPPER_ITM_PORT, "Encoder stall detected.\n");
    }
}

void Tmc2130::setDriverStallFlag(uint8_t flag)
{
    motorErrors.flag.driverStallFlag = (flag) ? ((isRunning()) ? flag & 0x01 : 0) : (0);
    if(motorErrors.flag.driverStallFlag)
    {
        ITM_Printf(STEPPER_ITM_PORT, "Driver stall detected.\n");
    }
}

void Tmc2130::setOvertempFlag(uint8_t flag)
{   
    motorErrors.flag.motorOvertempFlag = flag & 0x01;
    if(motorErrors.flag.motorOvertempFlag)
    {
        ITM_Printf(STEPPER_ITM_PORT, "Temprature threshold exceeded.\n");
    }
}

uint8_t Tmc2130::isErrorPresent(void)
{
    setEncoderStallFlag(1);
    uint8_t currentStatus = motorErrors.error;
    if(currentStatus)
    {
        setEncoderStallFlag(0);
        setOvertempFlag(0);
        setDriverStallFlag(0);
    }
    return currentStatus;
    // return motorErrors.error;
}

void Tmc2130::calibrate(stepperAppModes mode, dataOutPacket* out, uint32_t displacement)
{
    uint32_t steps = 0;
    
    switch (mode)
    {
        case CALIBRATION_SEQUENCE_01:        
            switch(out->deviceStatus)
            {
                case None:
                    resetMaxToggleCount();
                    run(CALIBRATION_RPM, ANTICLOCKWISE);
                    out->deviceStatus = CALIBRATION_SEQUENCE_01_STARTED;  
                    break;
                    
                case CALIBRATION_SEQUENCE_01_STARTED:
                    // if (encoder->isMotorStalled())
                    if (isErrorPresent())
                    {
                        stop();
                        if(motorErrors.flag.encoderStallFlag || motorErrors.flag.driverStallFlag)
                        {
                            out->deviceStatus = CALIBRATION_SEQUENCE_01_SUCCESS;
                        }
                        // encoder->setZeroOffset();
                        break;  
                    }
                        
                case CALIBRATION_SEQUENCE_01_SUCCESS:
                break;
                        
                default:
                out->deviceStatus = None;
                break;
            }
            break;
                
        case CALIBRATION_SEQUENCE_02:
            switch(out->deviceStatus)
            {
                case None:
                    resetMaxToggleCount();
                    steps = displacement * STEPS_PER_MM;
                    run(CALIBRATION_RPM, CLOCKWISE, steps);
                    out->deviceStatus = CALIBRATION_SEQUENCE_02_STARTED;
                    break;
                
                case CALIBRATION_SEQUENCE_02_STARTED:
                    if (MOTOR_STALLED == out->motorDiagnostic)
                    {
                        out->deviceStatus = CALIBRATION_SEQUENCE_02_FAILED;
                    }
                    else if (!isRunning())
                    {
                        resetMaxToggleCount();
                        encoder->setZeroOffset();
                        out->deviceStatus = CALIBRATION_SEQUENCE_02_SUCCESS;
                    }
                    break;
                
                case CALIBRATION_SEQUENCE_02_SUCCESS:
                    break;
                
                default:
                    out->deviceStatus = None;
                    break;
            }
            break;
                
        default:
            break;   
    }
}
