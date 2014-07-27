//
//  BNRPerson.h
//  BMITime
//
//  Created by Omer Wazir on 7/27/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject{
    float _heightInMeters;
    int _weightInKilos;
}

//BNRPerson has methods to read and set its instance variables
-(float) heightInMeters;
-(void)setHeightInMeters:(float)h;
-(int) weightInKilos;
-(void) setWeightInKilos:(int)w;

//BNRPerson has a method that calcuates the Body Mass Index
-(float) bodyMassIndex;

@end
