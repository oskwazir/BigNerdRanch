//
//  main.m
//  SecondsSinceESB
//
//  Created by Omer Wazir on 7/20/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
        [dateComponents setYear:1980];
        [dateComponents setMonth:5];
        [dateComponents setDay:21];
        
        NSCalendar *gregorianCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        
        NSDate *esbReleaseDate = [gregorianCalendar dateFromComponents:dateComponents];
        ;
        NSDate *now = [[NSDate alloc] init];
        double secondsSinceESBRelease = [now timeIntervalSinceDate:esbReleaseDate];
        
        NSLog(@"Since Empire Strikes Back was released %.0f seconds have passed.",secondsSinceESBRelease);
        
    }
    return 0;
}
