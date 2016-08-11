//
//  kpFerrari.m
//  Racing00
//
//  Created by MacMan on 8/10/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import "kpFerrari.h"

@implementation kpFerrari


-(id)init{
    self = [super initWithTopSpeed:215];
    
    if(self){
    
    }
    return self;
}

-(id)initWithTopSpeed:(int)speed{
    
    self = [self init];
    if(self){
        
    }
    return self;
}






-(int)totalRaceTime{
    
    int totalRaceTime = [ super totalRaceTime];

    return totalRaceTime -1;
}

@end
