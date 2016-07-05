//
//  kpRectangle.h
//  kpRectangle
//
//  Created by knax on 7/2/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "kpXYZpoints.h"
#import "kpGraphicObject.h"

@class kpXYZpoints;
@interface kpRectangle: kpGraphicObject

-(BOOL)containsPoint: (kpXYZpoints *) aPoint;

-(void) setWidth: (float) w andHeight: (float) h;
-(float) perimeter;
-(float) width;
-(float) height;
-(float) area;


-(kpXYZpoints *)  origin;

-(void) setOrigin: (kpXYZpoints *) pt;
-(void)translate: (kpXYZpoints *) vector;
-(kpRectangle *) intersect: (kpRectangle *) newAngle;


@end

