//
//  main.c
//  metersToFeetAndInches
//
//  Created by Omer Wazir on 7/17/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#include <stdio.h>
#include <math.h>

void metersToFeetAndInches(double meters,unsigned int *feetPointer, double *inchesPointer){
    
    //This function assumes meters is non-negative
    
    //Convert the number of meters into a floating point number of feet
    double rawFeet = meters * 3.281;
    
    //Get the feet and fractional foot from rawFeet
    double feet;
    double fractionalFoot = modf(rawFeet, &feet);
    
    //Store the number of feet at the supplied address
    printf("Storing %d to the address %p\n",(int)floor(feet),feetPointer);
    *feetPointer = (int)floor(feet);
    
    //Calculate inches
    double inches = fractionalFoot * 12.0;
    printf("Storing %.2f to the address %p\n", inches, inchesPointer);
    *inchesPointer = inches;
}


int main(int argc, const char * argv[]) {
    
    double meters = 3.0;
    unsigned int feet;
    double inches;
    
    metersToFeetAndInches(meters, &feet, &inches);
    
    printf("%.1f is equal to %d and %.1f inches\n",meters,feet,inches);
    
    return 0;
}
