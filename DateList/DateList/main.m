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
        NSArray *dateList = @[now,tomorrow,yesterday];
        
        NSLog(@"The second date is %@",dateList[1]);
        NSLog(@"There are %lu dates in the array",[dateList count]);
        
        for(NSDate *date in dateList){
            NSLog(@"Here is the date %@",date);
        }
    }
    return 0;
}
