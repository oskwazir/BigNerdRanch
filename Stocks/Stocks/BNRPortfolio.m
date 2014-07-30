//
//  BNRPortfolio.m
//  Stocks
//
//  Created by Omer Wazir on 7/29/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import "BNRPortfolio.h"
#import "BNRStockHolding.h"

@implementation BNRPortfolio

//We only expose an immutable array but locally use a mutable array.
-(void)setStocks:(NSArray *)stocks{
    _stocks = [stocks mutableCopy];
}

-(NSArray *)assets{
    return [_stocks copy];
}

-(void)addStock:(BNRStockHolding *)stock{
    //Is _stocks nil?
    if(!_stocks){
        //Create the array
        _stocks = [[NSMutableArray alloc] init];
    }
    
    [_stocks addObject:stock];
}

-(float)valueOfPortfolio{
    float sum = 0;
    for(int i = 0; i < [_stocks count]; i++){
        sum += [[_stocks objectAtIndex:i] valueInDollars];
        NSLog(@"Sum is now equal to: %.2f",sum);
    }
    
    return sum;
}

@end
