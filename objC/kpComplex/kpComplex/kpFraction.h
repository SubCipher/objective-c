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


-(void) reduce;
-(void) print;
-(double) convertToNum;



@end


