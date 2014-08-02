//
//  main.m
//  VowelMovement
//
//  Created by Omer Wazir on 8/2/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^ArrayEnumerationBlock)(id, NSUInteger, BOOL *);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //create an array of strings and one for devowelized ones
        NSArray *originalStrings = @[@"Darth Vader",@"Luke Skywalker",@"Princess Leia",
                                     @"Chewbacca",@"C3P0",@"R2-D2",@"Han Solo",@"Yoda",@"Obi Wan Kenobi"];
        
        NSLog(@"The original strings %@",originalStrings);
        
        NSMutableArray *devowelizedStrings = [[NSMutableArray alloc]init];
        
        //create a list of characters to be removed from the strings
        NSArray *vowels = @[@"a",@"e",@"i",@"o",@"u"];
        
        //declare the block variable
        ArrayEnumerationBlock devowelizer = ^(id string, NSUInteger i, BOOL *stop){
            NSMutableString *newString = [NSMutableString stringWithString:string];
            
//            NSRange yRange = [string rangeOfString:@"y" options:NSCaseInsensitiveSearch];
//            
//            //did I find a y?
//            if(yRange.location != NSNotFound){
//                *stop = YES; //prevent further iterations
//                return; //End this iteration
//            }
            
            //iterate over the array of vowels, replacing occurrences of each vowel with an empty string
            for(NSString *vowel in vowels){
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:vowel
                                           withString:@""
                                              options:NSCaseInsensitiveSearch
                                                range:fullRange];
            }
            
            [devowelizedStrings addObject:newString];
        }; //this is the end of the block assignment and needs a semi-colon to terminate it
        
        
        //Now lets iterate over the originalStrings array using our devowelizer block!
        [originalStrings enumerateObjectsUsingBlock:devowelizer];
        NSLog(@"devowelized strings: %@", devowelizedStrings);
    }
    return 0;
}
