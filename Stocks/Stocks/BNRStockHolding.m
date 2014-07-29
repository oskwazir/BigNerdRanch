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

@end
