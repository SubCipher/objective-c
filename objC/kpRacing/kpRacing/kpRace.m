//
//  kpRace.m
//  kpRacing
//
//  Created by MacMan on 7/21/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import "kpRace.h"
#import "kpCar.h"

/*private interface */

@interface kpRace()


@property NSDictionary * carsDictionary; //instance array
@property NSString *  trackName;


-(NSDictionary *)calculateRaceTimesForCars;

@end;

/*end private interface */


@implementation kpRace

//custom initializer w/ array as argument called by main.m

//-(id)initWithPlayerNames:(NSArray *)playerNamesArray trackName:(NSString *)theTrackName location:(NSString *)theLocationName{
//    return 0;
//    
//}


-(id)initWithPlayerNames: (NSArray *)playerNamesArray trackName:(NSString *) theTrackName{
    
    
    self = [super init]; // assign init super class properties to self
    
    if(self){ // check for proper initialized self
        _trackName = theTrackName; //set trackName

        
        //custom init function
        //create a mutable dictionary and create a pointer to it call *mutableCarsDictionary
        NSMutableDictionary *mutableCarsDictionary = [NSMutableDictionary dictionary];
        
        for (NSString * name in playerNamesArray){
        
            int randomSpeed = (arc4random() %50) +100;
            
            //create instance of kpCar allocate mem space and use kpCar custom init (See kpCar.h/kpCar.m
            kpCar * raceCar = [[kpCar alloc]initWithTopSpeed:randomSpeed];
            [mutableCarsDictionary setObject:raceCar forKey:name];
            
            
        }
        _carsDictionary = [NSDictionary dictionaryWithDictionary: mutableCarsDictionary];
        
    }
    return self;
}


-(NSDictionary *)calculateRaceTimesForCars{
    NSMutableDictionary * mutableTimesDictionary = [NSMutableDictionary dictionary];
    
    for (NSString *name in [_carsDictionary allKeys]){
        kpCar *playersCar = [_carsDictionary objectForKey:name];
        
        NSNumber *playersTime = @([playersCar totalRaceTime]);
        [mutableTimesDictionary setObject:playersTime forKey:name];
    }
    return [NSDictionary dictionaryWithDictionary: mutableTimesDictionary];
    
}


-(void)race{
    NSDictionary * timesDictionary = [self calculateRaceTimesForCars];
    
    SEL compareSelector = @selector (compare:);
    NSArray * sortedKeys = [timesDictionary keysSortedByValueUsingSelector:compareSelector];
    
    NSLog(@"Race results for %@...",_trackName);
    for(int i = 0; i < [sortedKeys count]; i++)
    {
        NSString * playerNames = sortedKeys[i];
        
        
        NSNumber * playersTime = timesDictionary[playerNames];
        
        NSLog(@"Position %i: %@ with a time of %i minutes",i + 1,playerNames,playersTime.intValue);
    }
    
    
}
@end






































