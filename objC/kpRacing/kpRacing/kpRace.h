//
//  kpRace.h
//  kpRacing
//
//  Created by MacMan on 7/21/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface kpRace : NSObject

@property (readonly) NSString * trackName;
@property (readonly) NSString * location;


-(id)initWithPlayerNames: (NSArray *)playerNamesArray trackName:(NSString *) theTrackName ;

-(id)initWithPlayerNames: (NSArray *)playerNamesArray trackName:(NSString *) theTrackName location:(NSString *)theLocationName;


-(void) race;


@end
