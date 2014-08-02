//
//  BNRLogger.h
//  Callbacks
//
//  Created by Omer Wazir on 8/2/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRLogger : NSObject
@property (nonatomic) NSDate *lastTime;
-(NSString *) lastTimeString;
-(void) updateLastTime:(NSTimer *)t;

@end
