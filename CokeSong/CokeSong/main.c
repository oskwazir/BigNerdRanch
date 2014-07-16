//
//  main.c
//  CokeSong
//
//  Created by Omer Wazir on 7/15/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#include <stdio.h>

void singSongFor(int numberOfBottles){
    
    if(numberOfBottles ==0){
        printf("There are simply no more bottles of coke on the wall.\n\n");
    } else {
        printf("%d bottles of coke on the wall. %d bottles of coke.\n", numberOfBottles,numberOfBottles);
        int oneFewer = numberOfBottles - 1;
        printf("Take one down, pass it around, %d bottles of coke on the wall.\n\n", oneFewer);
        singSongFor(oneFewer); //This function calls itself!
        
        //Print a message just before the function ends.
        printf("Put a bottle in the reclying, %d empty bottles in the bin.\n", numberOfBottles);
    }
}

int main(int argc, const char * argv[]) {
    singSongFor(4);
    return 0;
}
