#ifndef ETHERCAT
#define ETHERCAT

class Ethercat
{
    public:
        virtual void setup(){}
        virtual void loop(){}
        virtual bool isLinkDown(uint8_t phy) { return false; }
        virtual bool isLinkDown() { return false; }

};
#endif