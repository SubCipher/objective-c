//
//  main.m
//  kpRacing
//
//  Created by MacMan on 7/16/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "kpTournament.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        NSSet * playerNamesSet = [NSSet setWithObjects:@"Peter", @"Pual",@"Jane",@"Jill",nil];
        NSDictionary * tracksDictionary = @{@"Silverstone":@"Birmingham,UK",@"Hockenheimring":@"Hockenheim,de",@"Laguna Seca":@"Monterey,us"};
        
        kpTournament * tournament = [[kpTournament alloc] initWithTrackNames:tracksDictionary playerNames:playerNamesSet];
        tournament.tournamentName = @"World Series 2016";
        [tournament startTournament];
        
    }
    return 0;
}
