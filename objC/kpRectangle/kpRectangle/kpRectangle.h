//
//  kpRectangle.h
//  kpRectangle
//
//  Created by knax on 7/2/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>


@class kpXYZpoints;
@interface kpRectangle: NSObject

//@property int width, height;

-(kpXYZpoints *)  origin;

-(void) setOrigin: (kpXYZpoints *) pt;

-(void) setWidth: (int) w andHeight: (int) h;
-(int) width;
-(int) height;
-(int) area;
-(int) perimeter;

@end

