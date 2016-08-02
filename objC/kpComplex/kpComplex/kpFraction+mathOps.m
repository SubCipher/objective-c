//
//  kpFraction+mathOps.m
//  kpComplex
//
//  Created by MacMan on 7/31/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import "kpFraction+mathOps.h"
#import "kpFraction.h"
//#import "kpFraction.m"

//#import "kpComplex.h"
//#import "kpXYPoints.h"

@implementation kpFraction (mathOps)

//@synthesize numerator,denominator,wholeNumber;

-(kpFraction *) add: (kpFraction *) f{
    
    //new fraction instance to store result of addition
    kpFraction *results = [[kpFraction alloc]init];
    ++addCountVal;
    
    results.numerator = numerator * f.denominator + denominator * f.numerator;
    results.denominator = denominator * f.denominator;
    //[results reduce];
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
