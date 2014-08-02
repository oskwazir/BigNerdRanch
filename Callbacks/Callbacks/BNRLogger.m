//
//  BNRLogger.m
//  Callbacks
//
//  Created by Omer Wazir on 8/2/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import "BNRLogger.h"

@implementation BNRLogger

-(NSString *)lastTimeString{

    static NSDateFormatter *dateFormatter = nil;
    
    if(!dateFormatter){
        dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        NSLog(@"created dateFormatter");
    }
    
    return [dateFormatter stringFromDate:self.lastTime];
}

-(void)updateLastTime:(NSTimer *)t{
    
    NSDate *now = [NSDate date];
    [self setLastTime:now];
    NSLog(@"Just set time to %@", self.lastTimeString);
}

//Called each time a chunk arrives
-(void)connection:(NSURLConnection *)connection
   didReceiveData:(NSData *)data{
    
    NSLog(@"Received %lu bytes", [data length]);
    
    //Create mutable data if it doesn't already exist
    if(!_incomingData){
        _incomingData = [[NSMutableData alloc] init];
    }
    
    [_incomingData appendData:data];

}


//called when the last chunk has processed
-(void)connectionDidFinishLoading:(NSURLConnection *)connection {
    NSLog(@"Got it all!");
    NSString *string = [[NSString alloc] initWithData:_incomingData encoding:NSUTF8StringEncoding];
    
    //cleaning out data since we are done with it
    _incomingData = nil;
    
    NSLog(@"string has %lu characters in it", [string length]);
    
    //Uncomment the line below to see contents of the entire file
    //NSLog(@"The whole string is %@", string);
}

//called if the fetch fails
-(void)connection:(NSURLConnection *)connection
 didFailWithError:(NSError *)error{
    NSLog(@"Connection failed: %@", [error localizedDescription]);
    _incomingData = nil;
}

@end
