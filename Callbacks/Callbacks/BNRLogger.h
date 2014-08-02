//
//  BNRLogger.h
//  Callbacks
//
//  Created by Omer Wazir on 8/2/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRLogger : NSObject
<NSURLConnectionDelegate,NSURLConnectionDataDelegate>{
    
    //Need to store chunks here as they arrive
    NSMutableData *_incomingData;
    
}

@property (nonatomic) NSDate *lastTime;
-(NSString *) lastTimeString;
-(void) updateLastTime:(NSTimer *)t;

@end
