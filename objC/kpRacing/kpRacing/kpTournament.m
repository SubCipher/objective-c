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

//@property NSSet *trackNames;
@property NSSet *playerNames;
@property NSDictionary * tracksDictionary;



@end

@implementation kpTournament

-(id)initWithTrackNames:(NSDictionary *)trackNamesDictionary playerNames:(NSSet *)playerNamesSet{
    
    self = [super init];
    
    if(self){
        _tracksDictionary = trackNamesDictionary;
       // _playerNames = playerNamesSet;
        _playerNames = [[NSSet alloc] initWithSet:playerNamesSet copyItems:YES];
        
       
    }
    return self;
}



-(void)startTournament{
    
    [_tracksDictionary enumerateKeysAndObjectsUsingBlock:^(NSString * trackName, NSString *locationName, BOOL *stop){
            
        NSArray * playerNamesArray = [_playerNames allObjects];
        
        
        kpRace * race = [[kpRace alloc] initWithPlayerNames:playerNamesArray trackName:trackName location:locationName];
        [race race];
        
        
        
    }];
}














@end
