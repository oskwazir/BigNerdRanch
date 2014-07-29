//
//  BNREmployee.h
//  BMITime
//
//  Created by Omer Wazir on 7/28/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"
@class BNRAsset;

@interface BNREmployee : BNRPerson{
    NSMutableArray *_assets;
}

@property (nonatomic) unsigned int employeedID;
@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic) NSDate *hireDate;
@property (nonatomic, copy) NSArray *assets;

-(double) yearsOfEmployment;
-(void) addAsset: (BNRAsset *)asset;
-(unsigned int) valueOfAssets;

@end
