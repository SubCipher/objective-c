//
//  kpFraction.h
//  kpComplex
//
//  Created by knax on 7/6/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol mathStuff

-(void) setTo: (int) n over: (int) d;
- (BOOL)isEqualTo:(id)object;
- (BOOL)isLessThanOrEqualTo:(id)object;
- (BOOL)isLessThan:(id)object;
- (BOOL)isGreaterThanOrEqualTo:(id)object;
- (BOOL)isGreaterThan:(id)object;
- (BOOL)isNotEqualTo:(id)object;
- (BOOL)doesContain:(id)object;
- (BOOL)isLike:(NSString *)object;
- (BOOL)isCaseInsensitiveLike:(NSString *)object;

@end


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




-(void) print;
-(double) convertToNum;



@end


