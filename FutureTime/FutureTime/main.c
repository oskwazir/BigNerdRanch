//
//  main.c
//  FutureTime
//
//  Created by Omer Wazir on 7/19/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#include <stdio.h>
#include <time.h>

int main(int argc, const char * argv[]) {
    long epoch = time(NULL);
    printf("time since epoch %ld\n",epoch);
    
    struct tm now;
    
    localtime_r(&epoch, &now);
    
    printf("The time is %d:%d:%d\n",now.tm_hour,now.tm_min,now.tm_sec);
    return 0;
}
