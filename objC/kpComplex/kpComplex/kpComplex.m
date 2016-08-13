//
//  kpComplex.m
//  kpComplex
//
//  Created by knax on 7/5/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import "kpComplex.h"

@implementation kpComplex
@synthesize real, imaginary;

-(void) setReal: (double) a andImaginary: (double) b {
    real = a;
    imaginary = b;
}

-(void)print{
    NSLog(@"display complex number: %g + %gi",real,imaginary);
}

//-(void) setReal: (double) a andImaginary: (double) b{
//    real = a;
//    imaginary = b;
//}

-(kpComplex *) add: (kpComplex *) f{
    kpComplex *result = [[kpComplex alloc] init];
    
    result.real = real + f.real;
    result.imaginary = imaginary + f.imaginary;
    
    return result;
}



@end