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
    long secondsSince1970 = time(NULL);
    long fourMillionSecondsFromNow = secondsSince1970 + 4000000;
    
    struct tm now;
    
    localtime_r(&fourMillionSecondsFromNow, &now);
    
    printf("The date in 4 million seconds will be %d-%d-%d\n",now.tm_mon+1,now.tm_mday,now.tm_year+1900);
    return 0;
}
