//
//  kpTournament.m
//  kpRacing
//
//  Created by MacMan on 7/22/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import "kpTournament.h"
#import "kpRace.h"
@interface kpTournament ()


@property NSSet *playerNames;
@property NSDictionary * tracksDictionary;

-(void)printTournamentName;

@end

@implementation kpTournament

-(id)initWithTrackNames:(NSDictionary *)trackNamesDictionary playerNames:(NSSet *)playerNamesSet{
    
    self = [super init];
    
    if(self){
        _tracksDictionary = trackNamesDictionary;
        _playerNames = [[NSSet alloc] initWithSet:playerNamesSet copyItems:YES];
    }
    return self;
}

-(void)startTournament{
    
    [self printTournamentName];
    [_tracksDictionary enumerateKeysAndObjectsUsingBlock:^(NSString * trackName, NSString *locationName, BOOL *stop){
            
        NSArray * playerNamesArray = [_playerNames allObjects];
        
        kpRace * race = [[kpRace alloc] initWithPlayerNames:playerNamesArray trackName:trackName location:locationName];
        [race race];
        
    }];
}

-(void)printTournamentName{
    
    if(_tournamentName != nil)
    {
        NSLog(@"%@",_tournamentName);
    }
}

@end
