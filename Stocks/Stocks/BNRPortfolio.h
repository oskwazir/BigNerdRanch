//
//  BNRPortfolio.h
//  Stocks
//
//  Created by Omer Wazir on 7/29/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNRStockHolding;

@interface BNRPortfolio : NSObject

@property (nonatomic, copy) NSArray *stocks;

-(void) addStock:(BNRStockHolding *)stock;
-(void) removeStock:(BNRStockHolding *)stock;
-(float) valueOfPortfolio;

@end
