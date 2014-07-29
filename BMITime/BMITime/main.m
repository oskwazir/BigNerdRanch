//
//  main.m
//  BMITime
//
//  Created by Omer Wazir on 7/27/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNREmployee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNREmployee *dragonSpider = [[BNREmployee alloc] init];
        [dragonSpider setHeightInMeters:253.4];
        [dragonSpider setWeightInKilos:5174];
        [dragonSpider setEmployeedID:4401];
        [dragonSpider setHireDate:[NSDate dateWithNaturalLanguageString:@"Aug 2nd,2010"]];
        
        //log the instance variables using the getters
        float height = [dragonSpider heightInMeters];
        int weight = [dragonSpider weightInKilos];
        
        NSLog(@"%@ hired on %@",dragonSpider,[dragonSpider hireDate]);
        
        NSLog(@"DragonSpider is %.2f meters tall and weighs %d kilos.", height, weight);
        
        NSLog(@"Employee %u hired on %@",[dragonSpider employeedID],[dragonSpider hireDate]);
        
        NSLog(@"DragonSpider has a BMI of %.2f and has worked with us for %.2f years",[dragonSpider bodyMassIndex],[dragonSpider yearsOfEmployment]);
        
    }
    return 0;
}
