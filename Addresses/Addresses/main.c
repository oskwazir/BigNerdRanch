//
//  main.c
//  Addresses
//
//  Created by Omer Wazir on 7/17/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#include <stdio.h>
#include <limits.h>

int main(int argc, const char * argv[]) {
    int i = 17;
    int *addressOfi = &i;
    printf("i stores it's value at %p\n", addressOfi);
    printf("this function starts at %p\n", main);
    printf("the int stored at addressOfi is %d\n", *addressOfi);
     *addressOfi = 2014;
    printf("the value of i is now %d\n", i);
    printf("An int is %zu bytes\n", sizeof(int));
    printf("A float is %zu bytes\n", sizeof(float));
    printf("A short is %zu bytes\n", sizeof(short));
    printf("The largest value a signed short can hold is %d\n", SHRT_MAX);
    printf("The smallest value a signed short can hold is %d\n", SHRT_MIN);
    printf("The largest value an unsigned short can hold is %d\n", USHRT_MAX);
    printf("A pointer is %zu bytes\n", sizeof(int *));
    return 0;
}
