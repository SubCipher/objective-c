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
    
        NSArray * playerNames = @[@"Peter",@"Pual",@"Micheal",@"Tito"];
        kpRace *theRace = [[kpRace alloc] initWithPlayerNames:playerNames];
        [theRace race];
        

    }
    return 0;
}