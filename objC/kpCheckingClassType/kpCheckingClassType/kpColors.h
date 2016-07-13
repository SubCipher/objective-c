//
//  kpColors.h
//  kpCheckingClassType
//
//  Created by knax on 7/12/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface kpColors : NSObject


@property int hue, intensity, shade, baseColor;


-(void) colorMe: (int) shade baseColor: (int) fill;

-(void) touchUP: (int) hue intensity: (int) levels;


@end
