//
//  kpFraction.h
//  kpFractionTest
//
//  Created by knax on 6/30/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface kpFraction : NSObject

/* setter and getter old method 4 lines of code */

//-(void)setNumerator: (int) n;
//-(void)setDenominator: (int) d;
//-(int) numerator;
//-(int) denominator;


/*setter and getter: new style 1 line of code */
@property int numerator, denominator, wholeNumber;


-(void) print;
-(double) convertToNum;
-(void)setTo: (int)n over: (int)d;
-(kpFraction *) add: (kpFraction *) f;
-(kpFraction *) subtract: (kpFraction *) f;
-(kpFraction *) multiply: (kpFraction *) f;
-(kpFraction *) divide: (kpFraction *) f;

-(void) reduce;

@end
