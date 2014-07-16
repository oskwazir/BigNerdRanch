//
//  main.c
//  TwoFloats
//
//  Created by Omer Wazir on 7/15/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    float myWeight = 175.5;
    float myHeight = 71.9;
    
    double meaninglessNumber = myWeight * myHeight;
    
    printf("My height %f multipled by my weight %f is %f.\n", myHeight, myWeight, meaninglessNumber);
}
