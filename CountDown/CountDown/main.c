//
//  main.c
//  CountDown
//
//  Created by Omer Wazir on 7/16/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import <readline/readline.h>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char * argv[]) {
    
    printf("Where should I start counting?");
    const char *countAmountInput = readline(NULL);
    
    const int countAmount = atoi(countAmountInput);
    
    for(int i = countAmount; i > 0; i -=3){
        
        printf("%d\n",i);
        if(i % 5 == 0){
            printf("Found one\n");
        }
        
    }
    
    return 0;
}
