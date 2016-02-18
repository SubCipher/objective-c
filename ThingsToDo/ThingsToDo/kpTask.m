//
//  kpTask.m
//  ThingsToDo
//
//  Created by knax on 2/18/16.
//  Copyright © 2016 knax. All rights reserved.
//

#import "kpTask.h"

@implementation kpTask

@synthesize name = _name;
@synthesize done = _done;


-(id)initWithName:(NSString *)name done:(BOOL)done {
    self = [super init];
    if (self){
        self.name = name;
        self.done = done;
    }
    return self;
}

@end
