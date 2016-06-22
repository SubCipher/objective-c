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
            }
        NSLog(@"Triangular number %i is %i",number, triangularNumber);
        }
    }
    
    return 0;
}
