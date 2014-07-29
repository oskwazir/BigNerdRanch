//
//  BNRPerson.h
//  BMITime
//
//  Created by Omer Wazir on 7/27/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject
@property (nonatomic) float heightInMeters;
@property (nonatomic) int weightInKilos;

//BNRPerson has a method that calcuates the Body Mass Index
-(float) bodyMassIndex;

@end
