//
//  main.m
//  Stocks
//
//  Created by Omer Wazir on 7/27/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRStockHolding *amazon = [[BNRStockHolding alloc] init];
        [amazon setPurchaseSharePrice:86.49];
        [amazon setCurrentSharePrice:324.01];
        [amazon setNumberOfShares:23000];
        [amazon setNameOfStockTo:@"Amazon"];
        
        
        BNRStockHolding *nike = [[BNRStockHolding alloc] init];
        [nike setPurchaseSharePrice:26.08];
        [nike setCurrentSharePrice:77.72];
        [nike setNumberOfShares:34500];
        [nike setNameOfStockTo:@"Nike"];
        
        BNRStockHolding *starbucks = [[BNRStockHolding alloc] init];
        [starbucks setPurchaseSharePrice:17.70];
        [starbucks setCurrentSharePrice:78.74];
        [starbucks setNumberOfShares:47500];
        [starbucks setNameOfStockTo:@"Starbucks"];
        
        NSArray *stockHoldings = @[amazon,nike,starbucks];
        
        for(BNRStockHolding *stock in stockHoldings){
            NSLog(@"%@ was bought for %.2f and is now worth %.2f",[stock nameOfStock],[stock costInDollars],[stock valueInDollars]);
        }
    }
    return 0;
}
