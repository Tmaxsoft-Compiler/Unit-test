#include <stdlib.h>
#include <stdio.h>

extern "C"
{
    extern int O01();

    int main()
    {
        O01();
        return 0;
    }
}
