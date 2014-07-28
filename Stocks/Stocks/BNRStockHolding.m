//
//  BNRStockHolding.m
//  Stocks
//
//  Created by Omer Wazir on 7/27/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

-(float) purchaseSharePrice{
    return _purchaseSharePrice;
}

-(void) setPurchaseSharePrice:(float)price{
    _purchaseSharePrice = price;
}

-(float) currentSharePrice{
    return _currentSharePrice;
}

-(void) setCurrentSharePrice:(float)price{
    _currentSharePrice = price;
}

-(int) numberOfShares{
    return  _numberOfShares;
}

-(void) setNumberOfShares:(int)amount{
    _numberOfShares = amount;
}

-(NSString*) nameOfStock{
    return _nameOfStock;
}

-(void) setNameOfStockTo:(NSString *)name{
    _nameOfStock = name;
}

-(float) costInDollars{
    return [self purchaseSharePrice] * [self numberOfShares];
}

-(float) valueInDollars{
    return [self currentSharePrice] * [self numberOfShares];
}

@end
