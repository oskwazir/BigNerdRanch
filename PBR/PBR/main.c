//
//  main.c
//  PBR
//
//  Created by Omer Wazir on 7/17/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#include <stdio.h>
#include <math.h>

int main(int argc, const char * argv[]) {
    double pi = 3.14;
    double integerPart;
    double fractionPart;
    
    // Pass the address of integerPart as an argument
    fractionPart = modf(pi, &integerPart);
    
    // Find the value stored in integerPart
    printf("integerPart = %.0f, fractionPart = %.2f\n", integerPart,fractionPart);
    
    return 0;
}


