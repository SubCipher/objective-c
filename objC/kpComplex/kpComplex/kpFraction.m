//
//  kpFraction.m
//  kpComplex
//
//  Created by knax on 7/6/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import "kpFraction.h"

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


+(void)showAddCount:(int)countVal{
   extern int addCountVal =+ countVal;
    }

-(int)totalAddCount{
    extern int addCountVal;
    return addCountVal;
    
}

-(kpFraction *) add: (kpFraction *) f{
    int useCount;
    //new fraction instance to store result of addition
    kpFraction *results = [[kpFraction alloc]init];
    ++useCount;
    
    results.numerator = numerator * f.denominator + denominator * f.numerator;
    results.denominator = denominator * f.denominator;
    //[results reduce];
    [self showAddCount:useCount];
    return results;
    
}


-(kpFraction *) subtract: (kpFraction *) s{
    kpFraction *sFraction = [[kpFraction alloc] init];
    
    sFraction.numerator = numerator * s.denominator - denominator * s.numerator;
    sFraction.denominator = (denominator * s.denominator);
    [sFraction reduce];
    [sFraction print];
    
    return sFraction;
    
}

-(kpFraction *) multiply: (kpFraction *) m{
    kpFraction *multiResult = [[kpFraction alloc] init];
    
    multiResult.numerator = numerator * m.numerator;
    multiResult.denominator = denominator * m.denominator;
    [multiResult reduce];
    return multiResult;
    
}

-(kpFraction *) divide: (kpFraction *) d{
    kpFraction *divResult = [[kpFraction alloc]init];
    
    divResult.numerator = numerator * d.denominator;
    divResult.denominator = denominator * d.numerator;
    [divResult reduce];
    return divResult;
    
}


@end

