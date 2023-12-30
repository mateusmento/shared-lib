#include <hello.h>
#define NULL 0

int main(int argv, char** args) {
    char* name = argv >= 2 ? args[1] : NULL;
    hello(name);
    return 0;
}

