//
//  classA.m
//  abClasess
//
//  Created by knax on 7/3/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import "classA.h"

@implementation classA{
    int x;
}


-(void) initVar: (int) xVal  {
    x = xVal;
}

-(void) printVar{
    NSLog(@"initVar = %i",x);
}

-(int) x{
    return x;
}

@end
