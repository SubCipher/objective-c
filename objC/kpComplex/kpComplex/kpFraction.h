//
//  kpFraction.h
//  kpComplex
//
//  Created by knax on 7/6/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "mathStuff.h"


@interface kpFraction : NSObject <mathStuff>




@property int numerator,denominator, wholeNumber; 


-(void) setTo: (int) n over: (int) d;
+(kpFraction *)allocF;
+(int) count;

-(void)showAddCount;

//-(int)methCount;

//-(void)twoNumbers:(int)Num1 secNum:(int)Num2;

-(BOOL)eqCheck: (kpFraction*)ifE1 checkE2:(kpFraction *)ifEq2;

-(void)compareThis:(kpFraction *)compVal1 comp2:(kpFraction *)compVal2;
-(kpFraction *) add: (kpFraction *) f;
-(kpFraction *) subtract: (kpFraction *) f;
-(kpFraction *) multiply: (kpFraction *) f;
-(kpFraction *) divide: (kpFraction *) f;

-(void)calculateSin;

-(void) print;
-(double) convertToNum;

@end




