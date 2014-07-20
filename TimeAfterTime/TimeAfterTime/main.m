//
//  main.m
//  TimeAfterTime
//
//  Created by Omer Wazir on 7/20/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *now = [[NSDate alloc] init];
        NSLog(@"This NSDate object lives at %p",now);
        NSLog(@"The date is %@", now);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970.", seconds);
        
        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"In 100,000 seconds the time will be %@",later);
        
        NSCalendar *calendar = [NSCalendar currentCalendar];
        NSLog(@"My calendar is %@",calendar);
        
        // NSDayCalendarUnit & NSMonthCalendarUnit are deprecated in iOS 8.0
        unsigned long day = [calendar ordinalityOfUnit:NSDayCalendarUnit
                                                inUnit:NSMonthCalendarUnit
                                               forDate:now];
         
        NSLog(@"This is the day %lu of the month.",day);
        
            }
    return 0;
}
