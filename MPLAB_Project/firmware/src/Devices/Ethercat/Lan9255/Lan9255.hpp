#ifndef LAN9255
#define LAN9255

#include "../../../basicDef.h"
#include "../ethercat.hpp"

#define Byte_Size                                       1
#define Word_Size                                       2
#define DoubleWord_Size                                 4
#define Long_Size                                       8
#define Active                                          1

class Lan9255 : public Ethercat
{
    private:
        void stateMachine(void);
        uint64_t getDataFromTwinCAT(void);
    public:
    void setup() override;
    void loop() override;
    bool isLinkDown(uint8_t phy) override;
    void isMMIBusy();

};
#endif