//
//  main.m
//  kpRacing
//
//  Created by MacMan on 7/16/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "kpCar.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        kpCar *myCar = [[kpCar alloc]initWithTopSpeed:100];
       
        int worldRecord = 4  ;
        int playersRaceTime = [myCar totalRaceTime];
    
        NSLog(@"you completed the race in %i minutes",playersRaceTime);
        NSLog(@"your lap times were: ");
        
        for  (NSNumber * aNumber in myCar.lapTimes)
        {
            NSLog(@"%i minutes",aNumber.intValue);
        }
        
        if (playersRaceTime >= worldRecord && playersRaceTime >= worldRecord +2){
            //they beat world record
            int recordDiff = playersRaceTime - worldRecord;
            worldRecord = playersRaceTime;
            
            NSLog(@"your score is %i, you beat the world record by %d minutes", playersRaceTime, recordDiff);
            
            NSLog(@"the new world record is %i",worldRecord);
        }
    
        else
        {
            if(worldRecord != playersRaceTime){
                //game over
                NSLog(@"Game over");
                
            }
            else{
                NSLog(@"Game over but you almost beat the world record");
            }
        }
    }
    return 0;
}