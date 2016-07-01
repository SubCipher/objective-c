//
//  main.m
//  kpFractionTest
//
//  Created by knax on 6/30/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import "kpFraction.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        kpFraction *myFraction = [[kpFraction alloc] init];
        
        [myFraction setNumerator: 1];
        [myFraction setDenominator: 3];
        
        NSLog(@"The value of myFraction is:");
        
        [myFraction print];
    }
    return 0;
}