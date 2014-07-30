//
//  BNRStockHolding.h
//  Stocks
//
//  Created by Omer Wazir on 7/27/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject

@property (nonatomic) float purchaseSharePrice;
@property (nonatomic) float currentSharePrice;
@property (nonatomic) int numberOfShares;
@property (nonatomic, copy) NSString* symbol;

-(float) costInDollars;
-(float) valueInDollars;

@end
