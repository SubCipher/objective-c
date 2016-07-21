//
//  kpCar.h
//  kpRacing
//
//  Created by MacMan on 7/17/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface kpCar : NSObject

@property (readonly) NSArray * lapTimes; //crate read only public access for lapTimes NSArray



-(id)initWithTopSpeed:(int)speed; //custom init public interface for topSpeed

-(int) totalRaceTime; //public declaration for object

 


@end
