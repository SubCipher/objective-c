//
//  kpFraction+mathOps.m
//  kpComplex
//
//  Created by MacMan on 7/31/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import "kpFraction+mathOps.h"

@implementation kpFraction (mathOps)

-(int)addThis:(int)a1 secNum:(int)a2{
    
    int results = a1 + a2;
    return results;
}

-(kpFraction  *) invert:(kpFraction *)flipThis {
    kpFraction *inverted = [[kpFraction alloc]init];
    inverted.numerator = flipThis.denominator;
    inverted.denominator = flipThis.numerator;
    
    return inverted;
    
}


@end
