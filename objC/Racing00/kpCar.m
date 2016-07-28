//
//  kpCar.m
//  Racing00
//
//  Created by MacMan on 7/27/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import "kpCar.h"

@interface kpCar()
@property int topSpeed;
@property NSArray *lapTimes;

@end

@implementation kpCar

-(id)initWithTopSpeed:(int)speed {
    /* endow self with properties of super class init */
    self =[ super init];
    if(self){
        _topSpeed = speed;
        
    }
    /* return a car object initialized with: (int) speed */
    return self;
}

-(int)totalRaceTime{
    self.lapTimes = [NSArray array];
    int totalRaceTime = 0;
    
    for(int i =1; i <=3; i++){
        
        int currentLapTime =0;
        while(currentLapTime == 0){
            currentLapTime = (arc4random()%4) /(_topSpeed/100);
            }
        totalRaceTime += currentLapTime;
        NSNumber * lapTimeObject =@(currentLapTime);
        
        self.lapTimes = [_lapTimes arrayByAddingObject:lapTimeObject];
        NSLog(@"totalRaceTime is: %d",currentLapTime);
        
    }
   
    return totalRaceTime;
}
-(void)printCar{
    
    //NSLog(@"car topSpeed: %d",_topSpeed);
    }

@end
