//
//  main.m
//  kpRacing
//
//  Created by MacMan on 7/16/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "kpRace.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        NSArray * playerNames = @[@"Peter",@"Pual",@"Micheal",@"Tito"]; //create array playerNames w/four names
        
        //create and initialize a class instance of kpRace called theRace
        //use the custom init method to initalize it with the playerNames array
        //SEE  kpRace.h and kpRace.m
        kpRace *theRace = [[kpRace alloc] initWithPlayerNames: playerNames trackName:@"SilverStone"];
        
        
        //call race method on class instance of theRace
        [theRace race];//method call (race) on theRace instance object
        

    }
    return 0;
}