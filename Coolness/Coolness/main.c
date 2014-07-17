//
//  main.c
//  Coolness
//
//  Created by Omer Wazir on 7/16/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import <readline/readline.h>
#include <stdio.h>


int main(int argc, const char * argv[]) {
    printf("Who is cool?\n");
    const char *name = readline(NULL);
    printf("%s is cool\n\n", name);
    
    return 0;
}
