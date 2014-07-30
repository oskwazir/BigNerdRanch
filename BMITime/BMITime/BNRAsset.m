//
//  BNRAsset.m
//  BMITime
//
//  Created by Omer Wazir on 7/28/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import "BNRAsset.h"
#import "BNREmployee.h"

@implementation BNRAsset

-(NSString *) description{
    //Is holder not nil?
    if(self.holder){
        return [NSString stringWithFormat:@"<%@: $%d assigned to: %@>",self.label,self.resaleValue,self.holder];
    } else {
        return [NSString stringWithFormat:@"<%@: $%d unassigned>",self.label,self.resaleValue];
    }
//    return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.resaleValue];
}

-(void) dealloc{
    NSLog(@"deallocating %@", self);
}

@end
