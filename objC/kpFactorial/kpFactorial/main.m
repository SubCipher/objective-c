//
//  main.m
//  kpFactorial
//
//  Created by knax on 6/22/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
        int i =0, n = 0;
        int f =1;
        
        NSLog(@"enter a number");
        scanf("%i",&n);
        
        for(i = n; i > 0; i--){
            f *= i;
            
            NSLog(@"the value of n:%i | value of f:%i | value of i:%i:",n,f,i);
        }
        
        
        
    }
    return 0;
}
