//
//  main.m
//  kpRectangularNums2
//
//  Created by knax on 6/22/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        int triangularNum, n,i;
        
                NSLog(@"enter a number");
        scanf("%i",&n);
        
        
        NSLog(@"triangular: %i       n value: %i\n",triangularNum,n);
        NSLog(@"------------------------------");
        

        for(i =0; i <= 5; i++){
            triangularNum = ((n+1)*n)/2;
            NSLog(@"%i              %i",triangularNum,n);
            n = n+5;
        }
    
    }
    return 0;
}
