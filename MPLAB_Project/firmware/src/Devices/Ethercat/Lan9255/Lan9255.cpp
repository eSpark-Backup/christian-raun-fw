#include "Lan9255.hpp"
//#include "../../../../Applications/ChristianRaun/app.hpp"
#include "../../Timer/timer.hpp"

void Lan9255::setup()
{
    
}

void Lan9255::loop()
{
   
}

bool Lan9255::isLinkDown(uint8_t phy)
{  
    CRITICAL_SECTION_ENTER();
    bool isLinkDown = false;
    // Enable PDI access to mii management 
    uint16_t buffer = 0x01;
    MCHP_ESF_PDI_WRITE(0x0517, (uint8_t*)&buffer, Byte_Size);
    
    // Set Phy address
    buffer = phy;
    isMMIBusy();
    MCHP_ESF_PDI_WRITE(PHY_ADDRESS_REGISTER, (uint8_t*)&buffer, Byte_Size);
    
    // Set Phy registers address
    buffer = 0x01;
    isMMIBusy();
    MCHP_ESF_PDI_WRITE(PHY_REGISTER_ADDRESS_REGISTER, (uint8_t*)&buffer, Byte_Size);
    
    // Read data from phy's register
    buffer = 0x0100;
    MCHP_ESF_PDI_WRITE(0x0510, (uint8_t*)&buffer,Word_Size);
    isMMIBusy();  
    MCHP_ESF_PDI_READ(PHY_DATA_REGISTER, (uint8_t*)&buffer, Word_Size);
    
    if(!(buffer & (1<<2)))
    {
        isLinkDown = true;
    }
    
    // Disable PDI access to mii management 
    buffer = 0x00;
    MCHP_ESF_PDI_WRITE(0x0517, (uint8_t*)&buffer, Byte_Size); 
    
    CRITICAL_SECTION_LEAVE();
    return isLinkDown;
}

void Lan9255::isMMIBusy(void)
{
    uint16_t busyFlag; 
    do 
    {
        MCHP_ESF_PDI_READ(MII_MANAGEMENT_CONTROL, (uint8_t*)&busyFlag, Word_Size);
        for(uint8_t x =0; x < 200; x++);
    } while (busyFlag&0x8000);
}

bool Lan9255::isLinkDown()
{  
    static uint32_t previousMillis = 0, previousCount = 0;
    if ((millis() - previousMillis) > TO_MS(1))
    {
        previousMillis = millis();
        if (getInterruptCount() == previousCount)
        {    
            return true;
        }
        else
        {
            previousCount = getInterruptCount();
        }
    }
    return false;
}