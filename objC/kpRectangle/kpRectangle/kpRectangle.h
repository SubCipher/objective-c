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

@interface kpRectangle: kpGraphicObject


-(kpXYZpoints *) origin;
-(kpRectangle *) intersect: (kpRectangle *) aRectangle;

-(void) setOrigin: (kpXYZpoints *) pt;

-(void) setWidth: (float) w andHeight: (float) h;
-(void)translate: (kpXYZpoints *) vector;
-(void)draw: (kpRectangle *) drawThis;

-(BOOL)containsPoint: (kpXYZpoints *) aPoint;

-(float) width;
-(float) height;
-(float) perimeter;
-(float) area;





@end

