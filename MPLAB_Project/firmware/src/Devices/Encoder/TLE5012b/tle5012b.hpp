#ifndef TLE5012B
#define TLE5012B

#include "../encoder.hpp"

#define READ_SENSOR                 0x8000    //!< \brief base command for read
#define SAFE_low                    0x0000    //!< \brief switch of safety word generation
#define SAFE_high                   0x0001    //!< \brief switch on safety word generation
#define UPD_low                     0x0000    //!< \brief read normal registers
#define UPD_high                    0x0400    //!< \brief read update buffer registers
#define REG_AVAL                    0x0020    //!< \brief AVAL angle value register
#define DELETE_BIT_15               0x7FFF    //!< \brief Value used to delete everything except the first 15 bits
#define CHANGE_UINT_TO_INT_15       0x8000    //!< \brief Value used to change unsigned 16bit integer into signed
#define CHECK_BIT_14                0x4000    //!< \brief
#define POW_2_15                    32768.0   //!< \brief values used to for final calculations of angle speed, revolutions, range and value
#define POW_2_7                     128.0     //!< \brief
#define ANGLE_360_VAL               360.0     //!< \brief
#define STALL_DETECTION_MAX_TIME    0.4

class Tle5012b : public Encoder
{
    private:
        float ZeroOffset = 0;
        float displacementCount = 0;
        bool almostCompleteCW = false;
        bool almostCompleteCCW = false;
        
    public:
        void setup() override;
        void loop() override;
        void getAngleValue(double &angleValue) override;
        float calculateDisplacement(void) override;
        bool isMotorStalled() override;
        void setZeroOffset(void) override;
        void update(float rpm, bool dir) override;
        
};
#endif