//
//  main.m
//  kpPerson
//
//  Created by MacMan on 8/1/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "kpPerson.h"
#import "kpShoutingPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        kpPerson *objectNil;
        
        if(objectNil == nil){
            NSLog(@"YEP");
        }
            else{
                NSLog(@"nope");
        }
    
        
        [kpPerson person];
        
        kpPerson *frenchPerson = [kpPerson person];
        [frenchPerson sayHelloFrench];
        
        
        
        kpPerson *thisPerson = [[kpPerson alloc]init];
        [thisPerson sayHello];
        
        kpShoutingPerson * loudPerson =[kpShoutingPerson new];
        [loudPerson sayHello];
        
        if ([thisPerson isEqual: thisPerson]){
            NSLog(@"True");
        }
        
        kpPerson * spanishPerson = [kpPerson new];
        [spanishPerson sayHelloSpanish];
        
       }
    return 0;
}
