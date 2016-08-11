//
//  kpCar.h
//  Racing00
//
//  Created by MacMan on 7/27/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "kpRacingClassCar.h"

@interface kpCar : NSObject <kpRacingClassCar>

@property (readonly) NSArray *lapTimes;


-(id)initWithTopSpeed:(int)speed;
-(int)totalRaceTime;

-(void)printCar;

@end
