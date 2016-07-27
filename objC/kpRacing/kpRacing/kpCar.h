//
//  kpCar.h
//  kpRacing
//
//  Created by MacMan on 7/17/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RacingClassCar.h"

@interface kpCar : NSObject <RacingClassCar>

@property (readonly) NSArray * lapTimes; //create read only public access for lapTimes NSArray



-(id)initWithTopSpeed:(int)speed; //custom init public interface for topSpeed

-(int) totalRaceTime; //public declaration for object


@end
