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
       
        kpCalculator *deskCalc = [[kpCalculator alloc]init];
        
        [deskCalc setAccumulator: 100.0];
        [deskCalc add: 200.];
        [deskCalc divide: 15.0];
        [deskCalc subtract: 10.0];
        [deskCalc multiply: 5];
        
        NSLog(@"The result is %g", [deskCalc accumulator]);
        NSLog(@"The result is %g", [deskCalc add:45]);
        NSLog(@"The result is %g", [deskCalc subtract:15]);
        NSLog(@"The result is %g", [deskCalc multiply:-4]);
        NSLog(@"The result is %g", [deskCalc changeSign]);

    }
    
    
    float celsius;
    float fahren= 27;
    
    celsius = ((fahren - 32) / 1.8);
    NSLog(@"%f degress Fahrenheit(F) is %f degress Celsius",fahren,celsius);
    
    
    char c,d;
    
    c = 'd';
    d = c;
    
    NSLog(@"d1 = %c",d);
    
    
    
    
    
    
    return 0;
}