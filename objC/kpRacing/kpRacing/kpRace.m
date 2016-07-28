//
//  kpRace.m
//  kpRacing
//
//  Created by MacMan on 7/21/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import "kpRace.h"
#import "kpCar.h"
#import "NSURLConnection+ConnectionRequestSendingAdditions.h"

/*private interface */

@interface kpRace()


@property NSDictionary * carsDictionary; //instance array
@property NSString *  trackName;
@property NSString * location;


-(NSDictionary *)calculateRaceTimesForCars;

-(NSString *)weatherString;

@end;

/*end private interface */

@implementation kpRace

//custom initializer w/ array as argument called by main.m

-(id)initWithPlayerNames: (NSArray *)playerNamesArray trackName:(NSString *) theTrackName{
    
    self = [super init]; // assign init super class properties to self
    
    if(self){ // check for proper initialized self
        _trackName = [theTrackName copy];
        
        NSMutableDictionary *mutableCarsDictionary = [NSMutableDictionary dictionary];
        
        for (NSString * name in playerNamesArray){
            
            //generate a random topSpeed for each item in playerNamesArray
            int randomSpeed = (arc4random() %50) +100;
            
            //create instance of kpCar for each item in playNamesArray
            kpCar * raceCar = [[kpCar alloc]initWithTopSpeed:randomSpeed];
            
            
            [mutableCarsDictionary setObject:raceCar forKey:name];
        }
        _carsDictionary = [NSDictionary dictionaryWithDictionary: mutableCarsDictionary];
        
    }
    return self;
}

-(id)initWithPlayerNames: (NSArray *)playerNamesArray trackName:(NSString *) theTrackName location:(NSString *)theLocationName{
    self = [self initWithPlayerNames:playerNamesArray trackName:theTrackName];
    
    if(self){
        _location = [theLocationName copy];
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
    
    if(_location != nil){
        NSString * weatherString = [self weatherString];
        
        if(weatherString != nil){
            NSLog(@"Weather Report: %@",weatherString);
            
        }
    }
    
    for(int i = 0; i < [sortedKeys count]; i++)
    {
        NSString * playerNames = sortedKeys[i];
        
        NSNumber * playersTime = timesDictionary[playerNames];
        
        NSLog(@"Position %i: %@ with a time of %i minutes",i + 1,playerNames,playersTime.intValue);
    }
    
}


-(NSString *) weatherString{
    
    NSString * weatherURLString = [NSString stringWithFormat:@"http://api.openweathermap.org/data/2.5/weather?q=%@&APPID=9b6f7c096382c930edf02861f539efc4",_location];
    
    NSData *data = [NSURLConnection sendSynchronousRequestWithURLString:weatherURLString];
    
    NSString * weatherString = nil;
    if (data != nil){
        
        NSDictionary * weatherDictionary = [NSJSONSerialization JSONObjectWithData:data
                                                                           options: NSJSONReadingMutableContainers
                                                                             error: nil];
        if (weatherDictionary != nil)
        {
            NSArray * weatherDescriptionArray = weatherDictionary[@"weather"];
            
            if([weatherDictionary count] > 0)
            {
                NSDictionary * weatherDescriptionDictionary = weatherDescriptionArray[0];
                
                NSString * mainDescription = weatherDescriptionDictionary[@"main"];
                NSString * furtherDescription = weatherDescriptionDictionary[@"description"];
                
                weatherString = [NSString stringWithFormat:@"%@,%@",mainDescription, furtherDescription];
                
            }
        
        }
    }
    return weatherString;
}

@end