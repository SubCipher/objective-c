//
//  main.m
//  kpTriangularNumbers
//
//  Created by knax on 6/21/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int n, number, triangularNumber, counter;
        
        for( counter =1; counter <= 5; ++counter){
            NSLog(@"what triangluar number do you want?");
            scanf("%i",&number);
            
            triangularNumber =0;
            for( n = 1; n <= number; ++n){
                triangularNumber += n;
                
            }NSLog(@"Triangular number %i is %i",number, triangularNumber);
        }
        
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
