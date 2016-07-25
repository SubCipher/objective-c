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
    
        //NSArray * playerNames = @[@"Peter", @"Pual",@"Jane",@"Jill"];
        NSSet * playerNamesSet = [NSSet setWithObjects:@"Peter", @"Pual",@"Jane",@"Jill",nil];
        NSSet * trackNamesSet = [NSSet setWithObjects:@"Silverstone", @"Hockenheimring",@"Laguna Seca", nil];
        kpTournament * tournament = [[kpTournament alloc] initWithTrackNames:trackNamesSet playerNames:playerNamesSet];
        
        [tournament startTournament];
        
        
    }
    return 0;
}