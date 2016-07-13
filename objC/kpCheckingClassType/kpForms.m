//
//  kpForms.m
//  kpCheckingClassType
//
//  Created by knax on 7/12/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import "kpForms.h"



@implementation kpForms

@synthesize height, width;



-(void) setDimensions: (float) w setH: (float) h{
    width = w;
    height =h;
}



-(float) area: (float) w height: (float) h {
    float result;
    result = w * h;
    
    
    return result;
}

@end
