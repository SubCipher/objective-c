//
//  kpTriangle.h
//  kpRectangle
//
//  Created by knax on 7/4/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import "kpGraphicObject.h"

@interface kpTriangle : kpGraphicObject

-(void) setSize: (int)base height:(int) h;

-(float) setPerimeter: (float) s1 side2: (float) s2 side3:(float) s3;


-(float) base;
-(float) height;
-(float) area;

@end
