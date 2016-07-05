//
//  kpGraphicObject.m
//  kpRectangle
//
//  Created by knax on 7/4/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import "kpGraphicObject.h"

@implementation kpGraphicObject{
    int fillColor;
    BOOL filled;
    int lineColor;
}

-(void) setFill: (int) sFill{
    fillColor = sFill;
    
}
-(void) setFilled: (int) sFilled{
    filled = sFilled;
    
}
-(void) setLineColor: (int) sLine{
    lineColor = sLine;
}

-(int) fillColor{
    
    return fillColor;
}

-(BOOL) filled {
    return 0;
}

-(int) lineColor {
    return filled;
}


@end
