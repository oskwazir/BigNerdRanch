//
//  main.m
//  Stocks
//
//  Created by Omer Wazir on 7/27/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRForeignStockHolding.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRStockHolding *amazon = [[BNRStockHolding alloc] init];
        [amazon setPurchaseSharePrice:86.49];
        [amazon setCurrentSharePrice:324.01];
        [amazon setNumberOfShares:23000];
        [amazon setNameOfStock:@"Amazon"];
        
        
        BNRStockHolding *nike = [[BNRStockHolding alloc] init];
        [nike setPurchaseSharePrice:26.08];
        [nike setCurrentSharePrice:77.72];
        [nike setNumberOfShares:34500];
        [nike setNameOfStock:@"Nike"];
        
        BNRStockHolding *starbucks = [[BNRStockHolding alloc] init];
        [starbucks setPurchaseSharePrice:17.70];
        [starbucks setCurrentSharePrice:78.74];
        [starbucks setNumberOfShares:47500];
        [starbucks setNameOfStock:@"Starbucks"];
        
        BNRForeignStockHolding *toyota = [[BNRForeignStockHolding alloc] init];
        [toyota setPurchaseSharePrice:3990.00];
        [toyota setCurrentSharePrice:6136.00];
        [toyota setNumberOfShares:17500];
        [toyota setConversionRate:0.0098];
        [toyota setNameOfStock:@"Toyota Motor Corp"];
        
        BNRForeignStockHolding *bmw = [[BNRForeignStockHolding alloc] init];
        [bmw setPurchaseSharePrice:30.86];
        [bmw setCurrentSharePrice:92.21];
        [bmw setNumberOfShares:43750];
        [bmw setConversionRate:1.34];
        [bmw setNameOfStock:@"BMW"];
        
        NSArray *stockHoldings = @[amazon,nike,starbucks,toyota,bmw];
        
        for(BNRStockHolding *stock in stockHoldings){
            NSLog(@"%@ was bought for $%.2f and is now worth $%.2f",[stock nameOfStock],[stock costInDollars],[stock valueInDollars]);
        }
    }
    return 0;
}
