#include <stdio.h>

void hello(char* name) {
    if (name == NULL) name = "world";
    printf("Hello, %s!\n", name);
}

