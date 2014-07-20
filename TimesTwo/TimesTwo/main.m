//
//  main.m
//  TimesTwo
//
//  Created by Omer Wazir on 7/20/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *currentTime = [NSDate date];
        NSLog(@"currentTime's value is %p",currentTime);
        NSDate *startTime = currentTime;
        
        sleep(2);
        
        currentTime = [NSDate date];
        NSLog(@"currentTime's value now is %p",currentTime);
        NSLog(@"The address of the original value is %p", startTime);
        
        currentTime = nil;
        NSLog(@"currentTime's value now is %p",currentTime);
    }
    return 0;
}
