//
//  kpFraction.h
//  kpFractionTest
//
//  Created by knax on 6/30/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface kpFraction : NSObject

-(void) print;
-(void)setNumerator: (int) n;
-(void)setDenominator: (int) d;

-(int) numerator;
-(int) denominator;

-(double) convertToNum;


@end
