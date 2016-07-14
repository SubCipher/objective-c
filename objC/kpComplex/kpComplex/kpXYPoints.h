//
//  kpXYPoints.h
//  kpComplex
//
//  Created by knax on 7/13/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface kpXYPoints : NSObject


@property float x,y;

-(void) setPoints: (float) xVal setY: (float) yVal;

-(void)printPoints;

@end
