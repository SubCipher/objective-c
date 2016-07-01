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
        
        kpFraction *aFraction = [[kpFraction alloc] init];
        kpFraction *bFraction = [[kpFraction alloc]init];
        kpFraction *resultFraction;
        
        [aFraction setTo:3 over:5];
        [bFraction setTo:1 over:2];
        [aFraction print];
         NSLog(@"*");
        [bFraction print];
        NSLog(@"=");
        
        resultFraction = [aFraction multiply:bFraction];
        [resultFraction print];
            }
    return 0;
}