//
//  kpXYZpoints.m
//  kpRectangle
//
//  Created by knax on 7/2/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import "kpXYZpoints.h"

@implementation kpXYZpoints{
    kpXYZpoints *origin;
}

@synthesize x,y;


-(void) printPoints {
    NSLog(@"x = %g and y = %g",x,y);
}

-(void) setX: (float) setX andY: (float) yVal{
    
    x = setX;
    y = yVal;
}



@end
