#include <stdlib.h>
#include <stdio.h>

extern "C"
{
    extern int ZAP01();

    int main()
    {
        ZAP01();
        
        return 0;
    }
}
