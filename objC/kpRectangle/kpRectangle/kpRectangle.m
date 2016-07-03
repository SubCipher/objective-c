//
//  kpRectangle.m
//  kpRectangle
//
//  Created by knax on 7/2/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import "kpRectangle.h"
#import "kpXYZpoints.h" //OR use @class className in the header file.

@implementation kpRectangle{
    kpXYZpoints *origin;
    int width;
    int height;
}


//@synthesize width, height;

-(void) setWidth: (int) w andHeight: (int) h{
    width = w;
    height = h;
}

-(void) setOrigin: (kpXYZpoints *) pt{
    if( ! origin)
    origin = [[kpXYZpoints alloc] init];
    origin.x = pt.x;
           
    
}



-(int) width{
    return width;
}

-(int) height{
    return height;
}

-(int)area {
    return (width * height);
}

-(int)perimeter{
    return (width + height)*2;
}


-(kpXYZpoints *) origin{
    return origin;
}


@end
