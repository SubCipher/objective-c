//
//  kpRace.m
//  kpRacing
//
//  Created by MacMan on 7/21/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import "kpRace.h"
#import "kpCar.h"

@interface kpRace()



@property NSDictionary * carsDictionary; //instance array

-(NSDictionary *)calculateRaceTimesForCars;

@end;


@implementation kpRace

-(id)initWithPlayerNames:  (NSArray *)playerNamesArray{ //custom initializer w/ array as argument
    self = [super init]; // assign init super class properties to self
    
    if(self){ // check for proper initialized self that inherits init properties
        
        
        NSMutableDictionary *mutableCarsDictionary = [NSMutableDictionary dictionary];//create pointer to dictionary
        
        for (NSString * name in playerNamesArray){
        
            int randomSpeed = (arc4random() %50) +100;
            
            kpCar * raceCar = [[kpCar alloc]initWithTopSpeed:randomSpeed]; //create kpCar instance and initialize w/topSpeed
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
    
    for(int i = 0; i < [sortedKeys count]; i++)
    {
        NSString * playerNames = sortedKeys[i];
        
        
        NSNumber * playersTime = timesDictionary[playerNames];
        
        NSLog(@"Position %i: %@ with a time of %i minutes",i + 1,playerNames,playersTime.intValue);
    }
    
    
}
@end






































