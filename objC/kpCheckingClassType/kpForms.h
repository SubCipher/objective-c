//
//  kpForms.h
//  kpCheckingClassType
//
//  Created by knax on 7/12/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface kpForms : NSObject

@property int height;
@property int width;


-(void) setDimensions: (float) w setH: (float) h;

-(float) area: (float) w height: (float) h;



@end
