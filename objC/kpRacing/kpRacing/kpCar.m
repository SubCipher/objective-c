//
//  kpCar.m
//  kpRacing
//
//  Created by MacMan on 7/17/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import "kpCar.h"

@interface kpCar ()

@property int topSpeed; //overwrite topSpeed public interface w/a private declaration owned by .m file

@property NSArray * lapTimes; //overwrite lapTime NSArray w/ private declartion owned by .m file

//end private interface section

@end

@implementation kpCar

-(id)initWithTopSpeed:(int)speed{
    
    self = [super init]; //access parent class init "[super init]" and assign it's properties to self
    
    if(self) { //check self was properly constructed
        _topSpeed = speed;
        
          }
    return self;

}

-(int)totalRaceTime{
    
    self.lapTimes = [NSArray array]; //assign NSarray to initialized self object (topSpeed) property
    
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

-(void)repair{
    NSLog(@"Car has been repaired");
}

@end
