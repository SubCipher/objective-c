//
//  kpFraction.m
//  kpFractionTest
//
//  Created by knax on 6/30/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//


#import "kpFraction.h"

@implementation kpFraction{
    int numerator;
    int denominator;
    }

-(void) print{
    NSLog(@"%i / %i", numerator, denominator);
}

-(void) setNumerator: (int) n{
    numerator = n;
}

-(void) setDenominator: (int) d{
    
    denominator = d;
}

-(int) numerator {
    return numerator;
}


-(int) denominator{
    return denominator;
}

-(double) convertToNum {
    if (denominator != 0)
        return (double) numerator / denominator;
    else
        return NAN;
}


@end


