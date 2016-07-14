//
//  kpXYZpoints.h
//  kpRectangle
//
//  Created by knax on 7/2/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface kpXYZpoints : NSObject


@property float x,y;
-(void) setX: (float) xVal andY: (float) yVal;

-(void) printPoints;

@end
