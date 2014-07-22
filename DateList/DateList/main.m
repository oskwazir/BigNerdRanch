//
//  main.m
//  DateList
//
//  Created by Omer Wazir on 7/21/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *now = [[NSDate alloc] init];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24 * 60 * 60];
        NSDate *yesterday = [now dateByAddingTimeInterval: -24.0 * 60 * 60];
        NSMutableArray *dateList = [NSMutableArray array];
        
        [dateList addObject:now];
        [dateList addObject:tomorrow];
        [dateList insertObject:yesterday atIndex:0];
        
        for(NSDate *date in dateList){
            NSLog(@"Here is the date %@",date);
        }
        
        //Remove yesterday
        [dateList removeObjectAtIndex:0];
        NSLog(@"Now the first date is %@",dateList[0]);
    }
    return 0;
}
