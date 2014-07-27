//
//  main.m
//  BMITime
//
//  Created by Omer Wazir on 7/27/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRPerson *dragonSpider = [[BNRPerson alloc] init];
        [dragonSpider setHeightInMeters:253.4];
        [dragonSpider setWeightInKilos:5174];
        
        //log the instance variables using the getters
        float height = [dragonSpider heightInMeters];
        int weight = [dragonSpider weightInKilos];
        
        NSLog(@"DragonSpider is %.2f meters tall and weighs %d kilos.", height, weight);
        
        float bmi = [dragonSpider bodyMassIndex];
        
        NSLog(@"DragonSpider has a BMI of %.2f",bmi);
        
    }
    return 0;
}
