#include <stdio.h>
#include "f.h"

int main(int argc, char *argv[]) {
    if (2 > argc) {
        printf("Argument missing.\n");
        return -1;
    }

    f(argv[1]);
    printf("%s\n", argv[1]);

    return 0;
}