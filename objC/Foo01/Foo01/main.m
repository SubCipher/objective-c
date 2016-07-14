//
//  main.m
//  Foo01
//
//  Created by knax on 7/13/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Foo.h"

int gGlobalVar = 5;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
     
        Foo *myFoo = [[Foo alloc]init];
        
        NSLog(@"%i", gGlobalVar);
        
        [myFoo setgGlobalVar: 100];
        NSLog (@"%i",gGlobalVar);
    
    }
    return 0;
}
