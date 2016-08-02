//
//  kpFraction.m
//  kpComplex
//
//  Created by knax on 7/6/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import "kpFraction.h"
#import "kpFraction+mathOps.h"

static int addCountVal;
static int gCounter;


@implementation kpFraction

@synthesize numerator,denominator,wholeNumber;

+(kpFraction *)allocF{
    extern int gCounter;
    ++gCounter;
    return [kpFraction alloc];
}

+(int) count
{
    extern int gCounter;
    return gCounter;
}


-(void) print{
    NSLog(@"fraction is %i/%i",numerator, denominator);
}
-(void) setTo: (int) n over: (int) d{
    numerator = n;
    denominator = d;
}

-(double) convertToNum {
    if (denominator != 0)
        return (double) numerator / denominator;
    else
        return NAN;
}

-(void) reduce{
    int u = numerator;
    int v = denominator;
    int temp;
    
    while (v != 0){
        temp = u % v;
        u = v;
        v = temp;
    }
    numerator /= u;
    denominator /= u;
    
    if (numerator > denominator){
        
        wholeNumber = numerator/denominator;
        numerator = numerator % denominator;
    }
}


-(void)showAddCount{
    extern int addCountVal;
    NSLog(@"number of times add method is invoked: %d times",addCountVal);
    }



@end

