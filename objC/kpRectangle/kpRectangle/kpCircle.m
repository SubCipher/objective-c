//
//  kpCircle.m
//  kpRectangle
//
//  Created by knax on 7/4/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import "kpCircle.h"


@implementation kpCircle{
    float diameter;
    float area;
    float circumference;
    
}

-(void) setSize: (float) d{
    
    diameter = d;
}


-(float) circumference {
    
    circumference = 3.14159  * diameter;
    return circumference;
}

-(float) area{
    
    area = 3.14159/4 * (diameter*diameter);
    return area;
}


@end
