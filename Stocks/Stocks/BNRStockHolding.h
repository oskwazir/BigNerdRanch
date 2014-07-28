//
//  BNRStockHolding.h
//  Stocks
//
//  Created by Omer Wazir on 7/27/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject{
    float _purchaseSharePrice;
    float _currentSharePrice;
    int _numberOfShares;
    NSString *_nameOfStock;
}

-(float) purchaseSharePrice;
-(void) setPurchaseSharePrice:(float)price;

-(float) currentSharePrice;
-(void) setCurrentSharePrice:(float)price;

-(int) numberOfShares;
-(void) setNumberOfShares:(int)amount;

-(NSString*) nameOfStock;
-(void) setNameOfStockTo:(NSString*)name;

-(float) costInDollars;
-(float) valueInDollars;

@end
