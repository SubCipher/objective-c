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

-(id)initWithPlayerNames: (NSArray *)playerNamesArray trackName:(NSString *) theTrackName ;

-(void) race;


@end
