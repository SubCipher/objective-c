//
//  main.m
//  kpCalculaor01
//
//  Created by knax on 6/29/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "kpCalculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        kpCalculator *DesktopCal = [[kpCalculator alloc]init];
        
        [DesktopCal setAccumulator:5];
        [DesktopCal add:8];
        
    }
    return 0;
}















