//
//  kpFraction.m
//  kpComplex
//
//  Created by knax on 7/6/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import "kpFraction.h"

@implementation kpFraction
@synthesize numerator,denominator,wholeNumber;


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


//-(kpFraction *) add: (kpFraction *) f{
//    //new fraction instance to store result of addition
//    kpFraction *results = [[kpFraction alloc]init];
//    
//    results.numerator = numerator * f.denominator + denominator * f.numerator;
//    results.denominator = denominator * f.denominator;
//    //[results reduce];
//    return results;
//    
//}
//
//
//
//-(kpFraction *) subtract: (kpFraction *) s{
//    kpFraction *sFraction = [[kpFraction alloc] init];
//    
//    sFraction.numerator = numerator * s.denominator - denominator * s.numerator;
//    sFraction.denominator = (denominator * s.denominator);
//    [sFraction reduce];
//    [sFraction print];
//    
//    return sFraction;
//    
//}
//
//-(kpFraction *) multiply: (kpFraction *) m{
//    kpFraction *multiResult = [[kpFraction alloc] init];
//    
//    multiResult.numerator = numerator * m.numerator;
//    multiResult.denominator = denominator * m.denominator;
//    [multiResult reduce];
//    return multiResult;
//    
//}
//
//-(kpFraction *) divide: (kpFraction *) d{
//    kpFraction *divResult = [[kpFraction alloc]init];
//    
//    divResult.numerator = numerator * d.denominator;
//    divResult.denominator = denominator * d.numerator;
//    [divResult reduce];
//    return divResult;
//    
//}


@end

