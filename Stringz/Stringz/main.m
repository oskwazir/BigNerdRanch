//
//  main.m
//  Stringz
//
//  Created by Omer Wazir on 7/31/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableString *str = [[NSMutableString alloc] init];
        for (int i = 0; i < 10; i++) {
            [str appendString:@"Omer is cool!\n"];
        }
        [str writeToFile:@"/tmp/cool.txt"
              atomically:YES
                encoding:NSUTF8StringEncoding
                   error:NULL];
        
        NSLog(@"Done writing to /tmp/cool.txt");
    }
    return 0;
}
