#include  "../Applications/ChristianRaun/app.hpp"

App* app;

int main ( void )
{
    app = new App;
    app->setup();    
    
    while ( true )
    {
        app->loop();
    }
    
    /* Execution should not come here during normal operation */
    return ( EXIT_FAILURE );
}

