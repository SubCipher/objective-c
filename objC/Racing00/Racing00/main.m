//
//  main.m
//  Racing00
//
//  Created by MacMan on 7/27/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "kpCar.h"
#import "kpRace.h"
#import "kpTournament.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        NSSet *playerNamesSet = [NSSet setWithObjects:@"Peter",@"Paul",@"Micheal",@"Janet",nil];
        NSDictionary * tracksDictionary = @{@"Silverstone": @"Birmingham,uk",@"Hockenheimring":@"Hockenheim,dc",@"Laguna Seca":@"Montery,us"};
        
        kpTournament *tournament =[[[kpTournament alloc] init]initWithTrackNames:tracksDictionary playerNames:playerNamesSet];
        tournament.tournamentName = @"World series";
        
        [tournament startTournament];
        
        
    }
    return 0;
}
