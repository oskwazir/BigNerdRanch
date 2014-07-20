//
//  main.m
//  IdentifyComputer
//
//  Created by Omer Wazir on 7/20/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSHost *host = [NSHost currentHost];
        NSString *computerName = [host localizedName];
        NSLog(@"This computer's name is %@.", computerName);
    }
    return 0;
}
