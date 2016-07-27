//
//  RacingClassCar.h
//  kpRacing
//
//  Created by MacMan on 7/26/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol RacingClassCar <NSObject>

-(int)totalRaceTime;
-(void)repair;

@optional

-(void)startEngine;


@end
