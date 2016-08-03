//
//  kpRace.m
//  Racing00
//
//  Created by MacMan on 7/27/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import "kpRace.h"
#import "kpCar.h"
#import "NSURLConnection+ConnectionRequestSendingAdditions.h"

@interface kpRace()

@property NSDictionary *carsDictionary;
@property NSString *trackName; //overide .h
@property NSString *location;  //override .h


-(NSDictionary *)calculateRaceTimesForCars;
-(NSString *)weatherString;
@end

@implementation kpRace

/* this custom init is called from the tournament class .m file */
-(id)initWithPlayerNames:(NSArray *)playerNamesArray trackName:(NSString *)theTrackName{
    /* endow self with properties of super class init*/
    self = [super init];
    
    if (self){
        /* add additional initialization properties to self (race object) */
        
        
        _trackName = [theTrackName copy];
        NSMutableDictionary *mutableCarsDictionary = [NSMutableDictionary dictionary];
        
        /* create a car object for each index in playerNamesArray */
        for(NSString *name in playerNamesArray){
            
            int randomSpeed = (arc4random()%50) + 100;
            kpCar *raceCar = [[kpCar alloc]initWithTopSpeed:randomSpeed];
            
            /* add car objects and arrayNames to mutableCarsDictionary */
            [mutableCarsDictionary setObject:raceCar forKey:name];
            
        }
        /* create an NSDictionary with the mutableCarsDictionary and set it to _carsDictionary */
        _carsDictionary = [NSDictionary dictionaryWithDictionary:mutableCarsDictionary];

    }
    /*return initialized race object */
    return self;
}

/* end custom init #1 */

/* start custom init #2 */

-(id)initWithPlayerNames:(NSArray *)playerNamesArray trackName:(NSString *)theTrackName location:(NSString *)theLocationName{
    
    /* compound init with the first custom init */
    self = [self initWithPlayerNames:playerNamesArray trackName:theTrackName];
    
    /* this init initializes the race object with the properties of the init super class, the first custom init, and its own location properties */
    
    if(self){
        _location = [theLocationName copy];
    }
    return self;
    }
/* end custom init #2 */

-(NSDictionary *)calculateRaceTimesForCars{
    /* create a mutable dictionary */
    NSMutableDictionary *mutableTimesDictionary = [NSMutableDictionary dictionary];
   
    /* create an array using allKeys (from _carsDictionary) and read each key into "NSString *name" */
    for(NSString *name in [_carsDictionary allKeys]){
        
        /* create un-initialized Car object * and assign it a name (?) */
        kpCar *playersCar = [_carsDictionary objectForKey:name];
        
        /*call totalRaceTime on playersCar object and convert the resulting int to an NSNumber */
        NSNumber *playersTime = @([playersCar totalRaceTime]);
        
        /* add playersTime and names to mutableTimesDictionary */
        [mutableTimesDictionary setObject:playersTime forKey:name];
    
    }
    /* return an immutableDictionary created from mutableTimesDictionary */
    return [NSDictionary dictionaryWithDictionary:mutableTimesDictionary];
    
}


-(void)race{
    
    /* call calculateRaceTimesForCars on self -- kpRace object-- and assign the resulting
     * dictionary it returns to timesDictionary
     */
    NSDictionary *timesDictionary = [self calculateRaceTimesForCars];
    
    SEL compareSelector = @selector(compare:);
    
    /* get an array of values from timesDictionary and assign it to sortedKeys */
    NSArray *sortedKeys = [timesDictionary keysSortedByValueUsingSelector: compareSelector];
    
    NSLog(@"Race results for %@...",_trackName);
   
    if(_location != nil){
        
        NSString *weatherString = [self weatherString];
        
        if(weatherString != nil){
            NSLog(@"weather Reeport: %@",weatherString);
        
        }
    }
    
    for(int i = 0; i < [sortedKeys count]; i++){
        NSString * playerNames = sortedKeys[i];
        
        NSNumber * playersTime = timesDictionary [playerNames];
        NSLog(@"Position %i: %@ with a time of %i minutes",i+1,playerNames,playersTime.intValue);
    }
}

-(NSString *) weatherString{
    
    NSString * weatherURLString = [NSString stringWithFormat:@"http://api.openweathermap.org/data/2.5/weather?q=%@&APPID=9b6f7c096382c930edf02861f539efc4",_location];
    
    
    //NSURLConnection call to category method
    NSData *data = [NSURLConnection sendSynchronousRequestWithURLString:weatherURLString];
    
    
    
    NSString * weatherString = nil;
    if(data != nil){
        NSDictionary *weatherDictionary =[NSJSONSerialization JSONObjectWithData:data
                                                                         options:NSJSONReadingMutableContainers
                                                                           error:nil];
        if (weatherDictionary !=nil) {
            NSArray * weatherDescriptionArray = weatherDictionary[@"weather"];
            if([weatherDictionary count] >0){
                NSDictionary *weatherDescriptionDictionary = weatherDescriptionArray[0];
                NSString * mainDescription = weatherDescriptionDictionary[@"main"];
                NSString * furtherDescription = weatherDescriptionDictionary[@"description"];
                
                weatherString = [NSString stringWithFormat:@"%@, %@",mainDescription, furtherDescription];

                    }
                }
            } return weatherString;
        }

@end



