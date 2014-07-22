//
//  main.m
//  CountDownObjcStyle
//
//  Created by Omer Wazir on 7/21/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <readline/readline.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Where should I start counting?");
        const char *countAmountInput = readline(NULL);
        NSInteger countAmount = [[NSString stringWithUTF8String:countAmountInput] integerValue];
        NSLog(@"You entered %ld",(long)countAmount);
        
        for(NSInteger i = countAmount; i > 0; i -=3){
            NSLog(@"%ld\n",i);
            if(i%5 == 0){
                NSLog(@"Found one\n");
            }
        }
    }
    return 0;
}
