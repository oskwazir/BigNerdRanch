//
//  BNRPerson.m
//  BMITime
//
//  Created by Omer Wazir on 7/27/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import "BNRPerson.h"

@implementation BNRPerson

-(float) heightInMeters{
    return _heightInMeters;
}

-(void) setHeightInMeters:(float)h{
    _heightInMeters = h;
}

-(int) weightInKilos{
    return _weightInKilos;
}

-(void) setWeightInKilos:(int)w{
    _weightInKilos = w;
}

-(float) bodyMassIndex{
    float height = [self heightInMeters];
    return [self weightInKilos] / (height * height);
}


@end
