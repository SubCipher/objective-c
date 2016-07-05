//
//  kpGraphicObject.h
//  kpRectangle
//
//  Created by knax on 7/4/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface kpGraphicObject : NSObject
-(void) setFill: (int) sFill;
-(void) setFilled: (int) sFilled;
-(void) setLineColor: (int) sLine;


-(int) fillColor; //32bit
-(BOOL) filled;     //fillup?
-(int) lineColor;   //32 bit lineColor



@end
