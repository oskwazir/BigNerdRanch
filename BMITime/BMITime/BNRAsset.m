//
//  BNRAsset.m
//  BMITime
//
//  Created by Omer Wazir on 7/28/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import "BNRAsset.h"

@implementation BNRAsset

-(NSString *) description{
    return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.resaleValue];
}

-(void) dealloc{
    NSLog(@"deallocating %@", self);
}

@end
