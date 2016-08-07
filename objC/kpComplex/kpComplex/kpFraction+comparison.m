//
//  kpFraction+comparison.m
//  kpComplex
//
//  Created by MacMan on 8/4/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import "kpFraction+comparison.h"

@implementation kpFraction (comparison)

-(BOOL)isEqual:(kpFraction *)f1 {
    kpFraction *f2 = [[kpFraction alloc]init];
    
    if([f1 isEqual: f2])
        return YES;
    else
        return NO;
}


-(int)compareFractions:(kpFraction *)f1 secOne:(kpFraction *)f2{
    
    
    NSLog(@"f1 numerator = %d / f2 numerator = %d",f1.numerator,f2.numerator);
    
    if(f1.numerator < f2.numerator && f1.denominator < f2.denominator)
        return -1;
    
    else if(f1.numerator == f2.numerator && f1.denominator ==  f2.denominator)
        return 10;
    
    else if(f1.numerator > f2.numerator && f1.denominator > f2.denominator)
        return 1;
    else
        return 20;
        
}


@end
