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

@interface BNREmployee : BNRPerson

@property (nonatomic) unsigned int employeedID;
@property (nonatomic) NSDate *hireDate;
@property (nonatomic, copy) NSSet *assets;

-(double) yearsOfEmployment;
-(void) addAsset: (BNRAsset *)asset;
-(void) removeAsset: (BNRAsset *)asset;
-(unsigned int) valueOfAssets;

@end
