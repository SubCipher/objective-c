//
//  kpTournament.h
//  Racing00
//
//  Created by MacMan on 7/27/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface kpTournament : NSObject

@property (copy)NSString *tournamentName;

-(id)initWithTrackNames:(NSDictionary *)trackNameSet playerNames:(NSSet *) playerNamesSet;

-(void)startTournament;

@end
