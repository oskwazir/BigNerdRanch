//
//  main.m
//  FileReader
//
//  Created by Omer Wazir on 8/1/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSError *error;
        
        NSString *str = [[NSString alloc] initWithContentsOfFile:@"/etc/resolv.conf"
                                                        encoding:NSASCIIStringEncoding
                                                           error:&error];
        if(str){
            NSLog(@"resolv.conf looks like this %@", str);
        } else {
            NSLog(@"Read failed: %@", [error localizedDescription]);
        }
    }
    return 0;
}
