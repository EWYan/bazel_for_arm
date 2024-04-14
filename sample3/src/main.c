#include <stdio.h>
#include "main.h"
#include "add.h"

#include "test.h"

int main() {
    printf("Hello, world. Today is %s. all is well.\n", TODAY);
    int a = 10;
    int b = 20;
    printf("a + b = %d\n", add(a, b));

    printf("testflag = %d\n", testflag);
    return 0;
}

