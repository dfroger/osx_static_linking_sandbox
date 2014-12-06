#include "foo.h"
#include "bar.h"

#include <stdio.h>
#include <stdlib.h>

int main(int argc, char** argv)
{
    if (argc != 3) {
        printf("Usage: %s A B\n", argv[0]);
        return 1;
    }

    int a = atoi(argv[1]);
    int b = atoi(argv[2]);

    printf("foo(%d,%d) = %d\n", a, b, foo(a,b));
    printf("bar(%d,%d) = %d\n", a, b, bar(a,b));

    return 0;
}
