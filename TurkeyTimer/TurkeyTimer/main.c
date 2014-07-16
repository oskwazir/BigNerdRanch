//
//  main.c
//  TurkeyTimer
//
//  Created by Omer Wazir on 7/15/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#include <stdio.h>

void showCookTimeForTurkey(int pounds){
    int necessaryMinutes = 15 + 15 * pounds;
    if(necessaryMinutes > 120){
        int halfway = necessaryMinutes / 2;
        printf("Rotate after cooking for %d minutes of the %d minutes.\n", halfway, necessaryMinutes);
    } else {
        printf("Cook for %d minutes.\n", necessaryMinutes);
    }
    
    
    
}

int main(int argc, const char * argv[]) {
    
    int totalWeight = 10;
    int gibletsWeight = 1;
    int turkeyWeight = totalWeight - gibletsWeight;
    showCookTimeForTurkey(turkeyWeight);
    return 0;
}
