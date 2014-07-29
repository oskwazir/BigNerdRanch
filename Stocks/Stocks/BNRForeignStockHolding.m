//
//  BNRForeignStockHolding.m
//  Stocks
//
//  Created by Omer Wazir on 7/28/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding

/*
* Overriding costInDollars and valueInDollars to utilize conversionRate
*/

-(float) costInDollars{
    return [self purchaseSharePrice] * [self numberOfShares] * [self conversionRate] ;
}

-(float) valueInDollars{
    return [self currentSharePrice]  * [self numberOfShares] * [self conversionRate] ;
}

@end
