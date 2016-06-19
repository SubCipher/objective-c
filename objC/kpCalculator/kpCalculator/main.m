//
//  main.m
//  kpCalculator
//
//  Created by knax on 6/18/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface kpCalculator: NSObject
//accumulator methods declarations

-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;
-(void) print;


//arithmeic method declarations

-(void) add: (double) value;
-(void) subtract: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double) value;

@end

@implementation kpCalculator
{
    double accumulator;
}

-(void)setAccumulator: (double) value
{
    accumulator = value;
}


-(void) clear
{
    accumulator = 0;
}

-(double) accumulator
{
    return accumulator;
}

-(void) add: (double) value
{
    accumulator += value;
}

-(void) subtract: (double) value
{
    accumulator -= value;
}


-(void) multiply: (double) value
{
    accumulator *= value;
}


-(void) divide: (double) value
{
    accumulator /= value;
}


-(void) print
{
    NSLog(@"value of accumulator: %f",accumulator);
}


@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        kpCalculator *deskCalc = [[kpCalculator alloc]init];
        
        [deskCalc setAccumulator: 100.0];
        [deskCalc add: 200.];
        [deskCalc divide: 15.0];
        [deskCalc subtract: 10.0];
        [deskCalc multiply: 5];
        
        NSLog(@"The result is %g", [deskCalc accumulator]);
    }
    return 0;
}



