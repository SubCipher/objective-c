//
//  kpCalculator.m
//  kpCalculaor01
//
//  Created by MacMan on 8/8/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import "kpCalculator.h"

//@implementation Calculator

@implementation kpCalculator{
    double accumulator;
}

-(void) setAccumulator: (double) value{
    
    accumulator = value;

}

-(double)add: (double) value {
    
    NSLog(@"%lg + % lg is: %lg",accumulator, value,(accumulator+= value));
    return accumulator;
    
}
-(double)subtract: (double) value {
    NSLog(@"%lg - % lg is: %lg",accumulator, value,(accumulator -= value));
    return accumulator;
}
-(void) divide: (double) value{
    if (value != 0 && accumulator != 0){
        NSLog(@"%lg / % lg is: %lg",accumulator, value,(accumulator/= value));
        
    }
    else {
        NSLog(@"divsion by 0 not allowed");
        
    }
}

-(double) multiply: (double) value{
    NSLog(@"%lg * % lg is: %lg",accumulator, value,(accumulator *= value));
    return accumulator;
}

-(void) End {
    accumulator = 0;
    NSLog(@"this is the E option to quit (reset accumulator to %lg)",accumulator);
}

-(double) S {
    double newValue;
    scanf(" %lg",&newValue);
    accumulator = newValue;
    NSLog(@"this is the S option accumulator value is now %lg",accumulator);
    return accumulator;
}

/*
 
 
 -(double) sanitize: (double) value00{
 if(value00 >= 0  && value00 <= 9999999){
 NSLog(@"thank you");
 }
 else{
 
 NSLog(@"%lf, is not valid.  You have entered bad input please enter a digit",value00);
 }
 
 return value00;
 }

 
 
 

-(void) sanitize: (double) value00 ops: (char) operator secValue: (double) value01{
    if( ( value00 >= 0  && value00 <= 9999999) &&
       (operator == '+' || operator == '-' || operator == '*' || operator == '/' || operator == 'S' || operator =='E') &&
       ( value01 >= 0  && value01 <= 9999999)) {
        NSLog(@"thank you");
    }
    else{
        
        NSLog(@"%lf, %c, %lf, are not valid.  You have entered bad input please enter a digit",value00,operator,value01);
        
    }
}
*/

@end
