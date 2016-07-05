//
//  main.m
//  kpConditionalOps
//
//  Created by knax on 7/4/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
    int s = 4;
    int x = 9;
    //if x is less than 0 assign its value as -1 : else assign 81
    s = (x < 0 ) ? -1 : x * x;
    NSLog(@"%d is the value of s",s);
        
    //if x is less than 0 assign its value as -1 : else assign 81
    s = (x > 0 ) ? -1 : x * x;
    NSLog(@"%d is the value of s",s);

    
    
    
    
    
    
    }
    return 0;
}
