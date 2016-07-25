//
//  kpTournament.h
//  kpRacing
//
//  Created by MacMan on 7/22/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface kpTournament : NSObject

-(id)initWithTrackNames:(NSDictionary * )trackNameSet playerNames:(NSSet *) playerNamesSet;
-(void)startTournament;


@end
