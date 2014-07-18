//
//  main.c
//  BMICalc
//
//  Created by Omer Wazir on 7/18/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#include <stdio.h>

// Here is the declaration of the struct

typedef struct {
    float heightInMeters;
    int weightInKilos;
}  Person;

float bodyMassIndex(Person person){
    return person.weightInKilos / (person.heightInMeters * person.heightInMeters);
}


int main(int argc, const char * argv[]) {
    Person bob;
    bob.heightInMeters = 1.7;
    bob.weightInKilos  = 96;
    
    Person suzy;
    suzy.heightInMeters = 1.97;
    suzy.weightInKilos = 81;
    
    
    float bmi;
    bmi = bodyMassIndex(bob);
    printf("bob has a BMI of %.2f\n", bmi);
    
    bmi = bodyMassIndex(suzy);
    printf("suzy has a BMI of %.2f\n", bmi);
    
    return 0;
}
