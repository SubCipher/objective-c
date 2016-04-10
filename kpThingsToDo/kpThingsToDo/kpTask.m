//
//  kpTask.m
//  kpThingsToDo
//
//  Created by MacMan on 2/7/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import "kpTask.h"

@implementation kpTask

@synthesize name = _name;
@synthesize done = _done;

- (id)initWithName:(NSString *)name done:(BOOL)done {
    self = [super init];
    
    if (self) {
        self.name = name;
        self.done = done;
        
    }
    return self;
    
}

@end
