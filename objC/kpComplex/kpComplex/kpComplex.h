//
//  kpComplex.h
//  kpComplex
//
//  Created by knax on 7/5/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface kpComplex: NSObject

@property double real, imaginary;

-(kpComplex *) add: (kpComplex *) f;
-(void) setReal: (double) a andImaginary: (double) b;
-(void) print; //display as "a + bi"
-(double) real;
-(double) imaginary;


@end
