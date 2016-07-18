//
//  kpCar.m
//  kpRacing
//
//  Created by MacMan on 7/17/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import "kpCar.h"

@implementation kpCar

-(int)totalRaceTime{
    
    int totalRaceTime = 0;
    for (int i = 1; i <= 3; i++){
        
        int currentLapTime = (arc4random() %4) /(_topSpeed / 100);
        totalRaceTime += currentLapTime;
        
        
    }
    
    return totalRaceTime;

}


@end