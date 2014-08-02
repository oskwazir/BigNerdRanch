//
//  main.m
//  ImageFetch
//
//  Created by Omer Wazir on 8/2/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSURL *url = [NSURL URLWithString:@"http://www.google.com/images/logos/ps_logo2.png"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        NSError *error = nil;
        NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:NULL error:&error];
        
        
        if(!data){
            NSLog(@"Error when requesting image: %@",[error localizedDescription]);
            return 1;
        }
    
        NSLog(@"The file is %lu bytes long",(unsigned long)[data length]);
        
        BOOL written = [data writeToFile:@"/tmp/ps_logo2.png" options:0 error:&error];
        
        if(!written){
            NSLog(@"Error when writing to file: %@",[error localizedDescription]);
            return 1;
        }
        
        NSLog(@"Success");
        
        
    
    }
    return 0;
}
