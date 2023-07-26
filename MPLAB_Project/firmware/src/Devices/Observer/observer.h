#pragma once

class Observer
{
    public:
        virtual void update(float rpm, bool dir) = 0;
};