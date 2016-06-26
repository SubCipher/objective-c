//
//  main.m
//  kpAbsoluteValue
//
//  Created by knax on 6/24/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number;
        NSLog (@"Type in your number");
        scanf("%d",&number);
        
        if(number < 0){
            number = -number;
        }
        
        NSLog(@"absolute value of number is %d:",number);
        
       
    
    }
    return 0;
}
