//
//  kpTriangle.m
//  kpRectangle
//
//  Created by knax on 7/4/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import "kpTriangle.h"

@implementation kpTriangle{
    float base;
    float height;
    float perimeter;
}

-(float) setPerimeter: (float) s1 side2: (float) s2 side3:(float) s3{
    perimeter = s1 + s2 + s3;
    return perimeter;
}

-(void) setSize: (int)b height:(int) h{
    base = b;
    height = h;
    
}

-(float) base{
    return base;
}

-(float) height{
    return height;
}

-(float) area{
    return ( base/2 * height);
}


@end
