//
//  kpFraction.h
//  kpComplex
//
//  Created by knax on 7/6/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface kpFraction : NSObject

@property int numerator,denominator, wholeNumber;

-(void) setTo: (int) n over: (int) d;
+(kpFraction *)allocF;
+(int) count;

-(void)showAddCount;

//-(int)methCount;


-(kpFraction *) add: (kpFraction *) f;

-(kpFraction *) subtract: (kpFraction *) f;
-(kpFraction *) multiply: (kpFraction *) f;
-(kpFraction *) divide: (kpFraction *) f;

-(void) reduce;
-(void) print;
-(double) convertToNum;



@end


