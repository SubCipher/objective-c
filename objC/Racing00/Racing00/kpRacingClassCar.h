//
//  kpRacingClassCar.h
//  Racing00
//
//  Created by MacMan on 8/10/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol kpRacingClassCar <NSObject>
-(int)totalRaceTime;
-(void)repair;
@optional
-(void)startEngine;

@end
