//
//  main.m
//  kpIntegerTable
//
//  Created by knax on 6/21/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
        int i =0;
        int n = 0;
        NSLog(@"\n\n");
        NSLog(@"n value        n2 value");
        NSLog(@"--------------------------");
        
        for(i = 0; i < 10; i++){
            n = pow(i,2);
            NSLog(@"%i             %i",i,n);
            
            
        }
    
    
    
    }
    return 0;
}
