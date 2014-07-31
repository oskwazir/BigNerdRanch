//
//  BNREmployee.m
//  BMITime
//
//  Created by Omer Wazir on 7/28/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import "BNREmployee.h"
#import "BNRAsset.h"

//A class extension
@interface BNREmployee (){
    NSMutableSet *_assets;
}

@property (nonatomic) unsigned int officeAlarmCode;


@end

@implementation BNREmployee

// Accessors for assets properties
//We only expose an immutable array but locally use a mutable array.
-(void) setAssets:(NSSet *)assets{
    _assets = [assets mutableCopy];
}

-(NSSet *) assets{
    return [_assets copy];
}

-(void) addAsset:(BNRAsset *)asset{
 //Is _assets nil?
    if(!_assets){
        //Create the array
        _assets = [[NSMutableSet alloc] init];
    }
    
    [_assets addObject:asset];
    
    [asset setHolder:self];
}

-(void) removeAsset:(BNRAsset *)asset{
    //If _assets is nil get outta here
    if(!_assets) return;
    
    NSLog(@"%@ is removing asset: %@", self, asset);
    [_assets removeObject:asset];
}

-(unsigned int)valueOfAssets{
 //Sum up the resale value of the assets
    unsigned int sum = 0;
    for(BNRAsset *asset in _assets){
        sum += [asset resaleValue];
    }
    
    return sum;

}

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
    return [NSString stringWithFormat:@"Employee %u: $%u in assets.",[self employeedID],[self valueOfAssets]];
}

-(void) dealloc{
    NSLog(@"deallocating %@", self);
}

@end
