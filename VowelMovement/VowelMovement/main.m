//
//  main.m
//  VowelMovement
//
//  Created by Omer Wazir on 8/2/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //create an array of strings and one for devowelized ones
        NSArray *originalStrings = @[@"Darth Vader",@"Luke Skywalker",@"Princess Leia",
                                     @"Chewbacca",@"C3P0",@"R2-D2",@"Han Solo",@"Yoda",@"Obi Wan Kenobi"];
        
        NSLog(@"The original strings %@",originalStrings);
        
        NSMutableArray *devowelizedStrings = [[NSMutableArray alloc]init];
        
        //create a list of characters to be removed from the strings
        NSArray *vowels = @[@"a",@"e",@"i",@"o",@"u"];
        
        //Now lets iterate over the originalStrings array using our anonymous block!
        [originalStrings enumerateObjectsUsingBlock:^(id string, NSUInteger i, BOOL *stop){
            NSMutableString *newString = [NSMutableString stringWithString:string];
            for(NSString *vowel in vowels){
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:vowel
                                           withString:@""
                                              options:NSCaseInsensitiveSearch
                                                range:fullRange];
            }
            
            [devowelizedStrings addObject:newString];
        }];
        
        NSLog(@"devowelized strings: %@", devowelizedStrings);
    }
    return 0;
}
