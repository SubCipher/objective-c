
//
//  kpFraction+comparison.m
//  kpComplex
//
//  Created by MacMan on 8/4/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import "kpFraction+comparison.h"

@implementation kpFraction (comparison)

-(BOOL)isEqual:(kpFraction *)isE1 secIsEqualVal:(kpFraction *)isE2{
    
    
    if([isE1 isEqual: isE2])
        return YES;
    else
        return NO;
}

-(double)compareFractions:(double)f1 secOne:(double)f2{
    
    //float covertFractionToDecimal_1 = ((float)f1.numerator/f1.denominator);
    //float covertFractionToDecimal_2 = ((float)f2.numerator/f2.denominator);
    
    NSLog(@"f1 = %e f2 = %e",f1,f2);
    
    NSLog(@"f1 = %f f2 = %f (in decimal)",f1,f2);
    
    if(f1 < f2)
        return -1; 
    
    else if(f1 == f2)
        return 0;
    
    else if (f1  > f2)
        return 1;
    
    else
        return 20;
        
}


@end
