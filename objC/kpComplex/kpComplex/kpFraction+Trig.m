//
//  kpFraction+Trig.m
//  kpComplex
//
//  Created by MacMan on 8/12/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import "kpFraction+Trig.h"

@implementation kpFraction (Trig)


-(double)sin:(kpFraction*)sinThis{
    
    
    double sineResult = sinThis.numerator/sinThis.denominator;
    return sineResult;
}


@end
