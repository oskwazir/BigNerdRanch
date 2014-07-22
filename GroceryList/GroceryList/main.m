//
//  main.m
//  GroceryList
//
//  Created by Omer Wazir on 7/21/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *groceryList = [NSMutableArray array];
        [groceryList addObject:@"some variety of cheese"];
        [groceryList addObject:@"a couple apples"];
        [groceryList addObject:@"good dark chocolate"];
        
        NSLog(@"My grocery list has these things on it:");
        for(NSString *grocery in groceryList){
            NSLog(@"%@",grocery);
        }
        
    }
    return 0;
}
