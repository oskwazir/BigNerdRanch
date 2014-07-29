//
//  BNREmployee.m
//  BMITime
//
//  Created by Omer Wazir on 7/28/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import "BNREmployee.h"

@implementation BNREmployee

-(float) bodyMassIndex{
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

-(double) yearsOfEmployment{
 //Does employeed have a non-nil hire date?
    
    if(self.hireDate){
        // NSTimeInterval is the same as double
        NSDate *now = [NSDate date];
        NSTimeInterval secondsSinceHireDate = [now timeIntervalSinceDate:self.hireDate];
        return secondsSinceHireDate / 31557600.0; //31557600.0 is the amount of seconds in a year
    } else {
        return 0;
    }
}

-(NSString *) description{
    return [NSString stringWithFormat:@"<Employeed %d>",self.employeedID];
}

@end
