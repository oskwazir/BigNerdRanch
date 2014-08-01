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
        
        //Declare a pointer to an NSError object but don't instantiate it
        //The NSError instance will only be created if there really is an error
        
        NSError *error;
        
        //Pass the NSError pointer by reference to the NSString method
        
       BOOL success = [str writeToFile:@"/tmp/cool.txt"
              atomically:YES
                encoding:NSUTF8StringEncoding
                   error:&error];
        
       
        
        //Test the returned BOOL, and check the NSError if the write failed
        if(success){
            NSLog(@"Done writing to /tmp/cool.txt");
        } else {
             NSLog(@"Writing to /tmp/cool.txt failed: %@", error);
        }
        
    }
    return 0;
}
