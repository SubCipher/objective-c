//
//  kpXYPoints.m
//  kpComplex
//
//  Created by knax on 7/13/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import "kpXYPoints.h"

@implementation kpXYPoints

@synthesize x,y;

-(void) setPoints: (float) xVal setY: (float) yVal{
    x = xVal;
    y = yVal;
    
}

-(void)printPoints {
    NSLog(@"these are the points x: %f and y: %f",x,y);
}


@end
