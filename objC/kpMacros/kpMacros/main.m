//
//  main.m
//  kpMacros
//
//  Created by MacMan on 8/12/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "kpDefMacros.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        kpDefMacros *testDef = [[kpDefMacros alloc]initWithRadius:34];
        
        [testDef print];
        
    NSLog(@"%f",[testDef area]);
        [testDef circumferance];
        
        [testDef leapYear];
        NSLog(@"print max:%d",[testDef getMax:5 secMax:10]);
        
        NSLog(@"print max:%d",[testDef getMin:6 secMin:12 thirdMin:18]);
       
        NSLog(@"result of findCase is %d",[testDef findCase:'A']);
        
    }
    return 0;
}
