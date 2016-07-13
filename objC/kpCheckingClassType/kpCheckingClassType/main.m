//
//  main.m
//  kpCheckingClassType
//
//  Created by knax on 7/11/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "kpForms.h"
#import "kpColors.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        kpForms *obj0 = [[kpForms alloc]init];
        kpForms *obj1 = [[kpForms alloc]init];
        
        kpColors *objColor0 = [[kpColors alloc] init];
        
        
        NSLog(@"this is the output of [newForm class] to generate class type %@",[obj1 class]);
        NSLog(@"this is the output of [newForm class] == [newForm class] to find out if class type are the same %i",[obj1 class] == [obj0 class]);
        
        NSLog(@"to see if an object is a member of a class %i",[obj1 isMemberOfClass: [kpForms class]]);
        
        [objColor0 colorMe: 5 baseColor: 4];
        NSLog(@"to see if an object is a member of a class %i",[kpColors instancesRespondToSelector: @selector (colorMe:baseColor:)]);
        
        
        
    }
    return 0;
}
