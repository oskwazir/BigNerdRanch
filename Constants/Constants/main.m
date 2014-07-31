//
//  main.m
//  Constants
//
//  Created by Omer Wazir on 7/30/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"\u03c0 is %f", M_PI);
        NSLog(@"%d is larger", MAX(10,12));
        
        NSLocale *here = [NSLocale currentLocale];
        //by using NSLocaleCurrencyCode which is a Global Variable
        //we get help from XCode and the compiler
        //if we mispell the key. with a simple string we would not get any value back.
        NSString *currency = [here objectForKey:NSLocaleCurrencyCode];
        NSLog(@"Money is %@", currency);
    }
    return 0;
}