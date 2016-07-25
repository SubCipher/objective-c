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

@property NSSet *trackNames;
@property NSSet *playerNames;


@end

@implementation kpTournament

-(id)initWithTrackNames:(NSSet *)trackNamesSet playerNames:(NSSet *)playerNamesSet{
    
    self = [super init];
    
    if(self){
        _trackNames = trackNamesSet;
        _playerNames = playerNamesSet;
        
       
    }
    return self;
}



-(void)startTournament{
    
    [_trackNames enumerateObjectsUsingBlock:^(NSString * trackName, BOOL *stop){
            
        NSArray * playerNamesArray = [_playerNames allObjects];
        
        
        kpRace * race = [[kpRace alloc] initWithPlayerNames:playerNamesArray trackName:trackName];
        [race race];
        
        
        
    }];
}














@end
