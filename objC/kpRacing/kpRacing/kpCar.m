//
//  kpCar.m
//  kpRacing
//
//  Created by MacMan on 7/17/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import "kpCar.h"

@interface kpCar ()
//private interface section

@property int topSpeed; //overwrite topSpeed public interface w/a private declaration owned by .m file

@property NSArray * lapTimes; //overwrith lapTime NSArray w/ private declartion owned by .m file

//end private interface section

@end


@implementation kpCar


-(id)initWithTopSpeed:(int)speed{ //custom init
    
    self = [super init]; //access parent class init "[super init]" and assign it's properties to self
    
    if(self) { //check self was properly constructed
        _topSpeed = speed; //set topSpeed using "_" underscore setter method to write value
        
          }
    return self;

}

-(int)totalRaceTime{
    
    self.lapTimes = [NSArray array]; //assign NSarray to initialized self object (topSpeed) property
    // self.lapTimes = (self in this context is the initalized topSpeed object
    
    int totalRaceTime = 0;
    for (int i = 1; i <= 3; i++){
        
        int currentLapTime = 0;
        
        while (currentLapTime == 0){
            
        currentLapTime = (arc4random() %4) /(_topSpeed / 100);
            
        }
        totalRaceTime += currentLapTime;
        
        NSNumber * lapTimeObject = @(currentLapTime);
        self.lapTimes = [_lapTimes arrayByAddingObject:lapTimeObject];
        
    }
    
    return totalRaceTime;

}

@end
