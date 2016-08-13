//
//  kpDefMacros.m
//  kpMacros
//
//  Created by MacMan on 8/12/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import "kpDefMacros.h"

@interface kpDefMacros()
@property double radius;


@end

@implementation kpDefMacros


-(id)initWithRadius:(double)thisRadius{
    self = [super init];
    
    if(self){
        _radius = thisRadius;
    }
    return self;
}

-(int)getMax:(int)max1 secMax:(int)max2{
    
    return myMAX(max1,max2);
    
}

-(int)getMin:(int)min1 secMin:(int)min2 thirdMin:(int)min3{
    int thisMin = myMIN(min1, min2, min3);
    return thisMin;
}

-(void)leapYear{
    int year = 1988;
    if(IS_LEAP_YEAR ){
        NSLog(@"%d is a leap year",year);
    }
    else{
        NSLog(@"%d is not a lear year",year);
    }
}

-(int)findCase:(int)someCase{
    int nonzero;
    if( IS_UPPER_CASE (someCase){
        nonzero = 1;
    }
       return nonzero;
       }


-(void)print{
    
    NSLog(@"value of radius= %@ value of circumferance",self);
}


-(double)area{
    return PI * _radius * _radius;
}

-(double)circumferance{
    
    return TWO_PI * _radius;
    
}


@end
