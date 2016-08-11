//
//  kpBMW.m
//  Racing00
//
//  Created by MacMan on 8/10/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import "kpBMW.h"

@interface kpBMW ()

typedef NS_ENUM(NSUInteger,BMWModelType){
    BMWM13,
    BMWR5,
    BMWRR
};

@property BMWModelType model;

-(int)totalRaceTimeModifiedByModel:(int)raceTime;


@end

@implementation kpBMW



-(id)init {
    self = [super initWithTopSpeed:245];
    
    if(self){
        
        _model = arc4random() % 3;
        
        
    }
    return self;
    
}

-(id)initWithTopSpeed:(int)speed{
    self = [self init];
    
    if(self){
       
    }
     return self;
}

-(int)totalRaceTimeModifiedByModel:(int)raceTime{
    
    switch (_model) {
        case BMWRR:
            return raceTime -2;
            break;
        case BMWM13:
            return raceTime -1;
            break;
        case BMWR5:
            return raceTime -1;
        default:
            break;
    }
    
}
-(int)totalRaceTime{
    int raceTime = [super totalRaceTime];
    raceTime = [self totalRaceTimeModifiedByModel:raceTime];
    
    return raceTime;
}

@end
