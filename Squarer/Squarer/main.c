//
//  main.c
//  Squarer
//
//  Created by Omer Wazir on 7/16/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#include <stdio.h>

int squareOf(int number){
    int squared = number * number;
    return squared;
}

int main(int argc, const char * argv[]) {
    int number = 5;
    int squared = squareOf(5);
    
    printf("\"%d\" squared is \"%d\".\n",number,squared);
    return 0;
}
