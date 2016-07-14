//
//  Foo.m
//  Foo01
//
//  Created by knax on 7/13/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import "Foo.h"

@implementation Foo

-(void)setgGlobalVar: (int) val
{
    extern int gGlobalVar;
    gGlobalVar = val;
    
}

@end
