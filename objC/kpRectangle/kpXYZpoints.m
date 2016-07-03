//
//  kpXYZpoints.m
//  kpRectangle
//
//  Created by knax on 7/2/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import "kpXYZpoints.h"

@implementation kpXYZpoints{
    
    int x;
    int y;
}

-(void) setX: (int) xVal andY: (int) yVal{
    
    x = xVal;
    y = yVal;
}


-(int) x{
    return x;
}

-(int) y{
    return y;
}

@end
