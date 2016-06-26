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

//new stuff
-(double) changeSign;
-(double) reciprocal;
-(double) xSquared;

-(double) memoryClear;
-(double) memoryStore;
-(double) memoryRecall;
-(double) memoryAdd: (double) value;
-(double) memorySubtract: (double) value;
-(double) memory;


//arithmeic method declarations

-(double) add: (double) value;
-(double) subtract: (double) value;
-(double) multiply: (double) value;
-(double) divide: (double) value;

@end

@implementation kpCalculator{
    double accumulator;
    double memory;
}

-(void)setAccumulator: (double) value{
    accumulator = value;
}

-(void) clear{
    accumulator = 0;
}

-(double) accumulator{
    return accumulator;
}

-(double) add: (double) value{
    accumulator += value;
    return accumulator;
}

-(double) subtract: (double) value{
    accumulator -= value;
    return accumulator;
}


-(double) multiply: (double) value{
    accumulator *= value;
    return accumulator;
}


-(double) divide: (double) value{
    accumulator /= value;
    return accumulator;
}


-(void) print{
    NSLog(@"value of accumulator: %f",accumulator);
}

-(double) changeSign{
    if(accumulator > 0){
        accumulator = (-accumulator);
    } else{
        accumulator = (accumulator*-1);
    }
    return accumulator;
}

-(double) reciprocal{
    
    return accumulator;
}
-(double) xSquared {
    
    accumulator = pow(accumulator,2);
    return accumulator;
}

-(double) memoryClear{
    accumulator = 0;
    return accumulator;
}

-(double) memoryStore {
    memory = accumulator;
    return memory;
}
-(double) memoryRecall{
    accumulator = memory;
    return accumulator;
    
}
-(double) memoryAdd: (double) value{
    memory = memory + value;
    return memory;
}
-(double) memorySubtract: (double) value{
    memory = memory - value;
    return memory;
}
-(double) memory{
    return memory;
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        char operator;
        double value1, value2;
        kpCalculator *desktopCal = [[kpCalculator alloc]init];
        
        
        NSLog(@"enter value for variable 1");
        scanf(" %lf",&value1);
        
        NSLog(@"enter value for variable 2");
        scanf(" %lf",&value2);

        
        NSLog(@"enter an operation symbol  (*,-,+,or /)");
        scanf(" %c",&operator);
        NSLog(@"%lf %c %lf",value1,operator,value2);
        
        [desktopCal setAccumulator: value1];

        
        if( operator == '+')
           
            NSLog(@" %f %c %f = %f)",value1,operator,value2,[desktopCal add: value2]);
        else if
            (operator == '-')
            NSLog(@" %f %c %f = %f)",value1,operator,value2,[desktopCal subtract: value2]);
        
        else if
            (operator == '*')
            NSLog(@" %f %c %f = %f)",value1,operator,value2,[desktopCal multiply: value2]);
   
        else if
            (operator == '/')
            NSLog(@" %f %c %f = %f)",value1,operator,value2,[desktopCal divide: value2]);
       
    }
    
    
    return 0;
}