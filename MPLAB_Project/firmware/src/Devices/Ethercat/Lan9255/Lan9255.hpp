#ifndef LAN9255
#define LAN9255

#include "../../../basicDef.h"
#include "../ethercat.hpp"

#define Byte_Size                       1
#define Word_Size                       2
#define DoubleWord_Size                 4
#define Long_Size                       8
#define Active                          1

#define MII_MANAGEMENT_CONTROL          0x0510
#define PHY_ADDRESS_REGISTER            0x0512
#define PHY_REGISTER_ADDRESS_REGISTER   0x0513
#define PHY_DATA_REGISTER               0x0514
#define HBI_INDEXED_INDEX0_REG          0x00
#define HBI_INDEXED_DATA0_REG           0x04

class Lan9255 : public Ethercat
{
    private:
        void stateMachine(void);
        uint64_t getDataFromTwinCAT(void);
        
    public:
        void setup() override;
        void loop() override;
        bool isLinkDown(uint8_t phy) override;
        bool isLinkDown() override;
        void isMMIBusy();

};

#endif