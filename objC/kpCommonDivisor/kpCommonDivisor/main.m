//
//  main.m
//  kpCommonDivisor
//
//  Created by knax on 6/21/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        unsigned int u,v,temp;
        
        NSLog(@"enter two non-negative numbers:");
        scanf("%u,%u",&u,&v);
        
        while(v != 0){
            temp = u % v;
            u = v;
            v = temp;
        }
        NSLog(@"the GCD is: %d",u);

        
    }
    return 0;
}
