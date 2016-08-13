//
//  kpDefMacros.h
//  kpMacros
//
//  Created by MacMan on 8/12/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

#define PI 3.1415926654
#define TWO_PI 2.0 * PI
#define IS_LEAP_YEAR year %4 == 0 && year % 100  != 0 \
                    || year % 400 == 0

#define myMAX(a,b) ( ((a) > (b)) ? (a) : (b))
#define myMIN(a,b,c) ( ((a) < (b)) ? (a) : (b))


#define IS_UPPER_CASE(X) ((X) >= 'A') && ((X) <= 'Z'))

@interface kpDefMacros : NSObject


-(id)initWithRadius:(double)thisRadius;
-(void)leapYear;
-(int)getMax:(int)max1 secMax:(int)max2;
-(int)getMin:(int)min1 secMin:(int)min2 thirdMin:(int)min3;

-(int)findCase:(int)someCase;

-(int)alphaNumValues;


-(double)circumferance;
-(double)area;
-(void)print;

@end
