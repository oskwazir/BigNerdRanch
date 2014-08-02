//
//  main.m
//  Callbacks
//
//  Created by Omer Wazir on 8/2/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRLogger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BNRLogger *logger = [[BNRLogger alloc] init];
        
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0
                                                          target:logger
                                                        selector:@selector(updateLastTime:)
                                                        userInfo:nil
                                                         repeats:YES];
        
        [[NSRunLoop currentRunLoop] run];
        
    }
    return 0;
}
