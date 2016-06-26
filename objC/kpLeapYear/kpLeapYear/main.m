//
//  main.m
//  kpLeapYear
//
//  Created by knax on 6/25/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int yearToEval;
        int rem_4 = 4;
        int rem_100 = 100;
        int rem_400 = 400;

        NSLog(@"Enter a year to calculate:\n");
        scanf("%d",&yearToEval);
        
        if ((yearToEval % rem_4 == 0 && yearToEval % rem_100 != 0 ) ||(yearToEval % rem_400 == 0)) {
                NSLog(@"the year %d is a leap year",yearToEval);
            }
        
        else {
                NSLog(@"the year %d is not a leap year",yearToEval);
            }
    
    }
    return 0;
}
