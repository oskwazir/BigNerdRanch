//
//  BNRStockHolding.m
//  Stocks
//
//  Created by Omer Wazir on 7/27/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

-(float) costInDollars{
    return [self purchaseSharePrice] * [self numberOfShares];
}

-(float) valueInDollars{
    return [self currentSharePrice] * [self numberOfShares];
}

-(NSString *) description{
    return [NSString stringWithFormat:@"Stock %@: worth $%.2f",[self symbol],[self valueInDollars]];
}

@end
