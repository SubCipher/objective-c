//
//  main.m
//  kpGetSum
//
//  Created by knax on 6/23/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //adding digits using modus operater
        int n, t, sum =0, remainder;
        NSLog(@"enter an integer:\n");
        scanf("%d", &n);
        
        t = n;
        
        while ( t != 0){
            
            remainder = t %10;
            sum = sum + remainder;
            t = t /10;
            
        } NSLog(@"the sum of %d is %d",n,sum);
        
        
        //adding digits using an array
        int c1, sum1, t1;
        char n1[1000];
        
        NSLog(@"Input an integer");
        scanf("%s",n1);
        
        sum1 = c1 =0;
        while(n1[c1] != '0'){
            t1 = n1[c1] - '0'; //converting char to int
            sum1 = sum1 +t1;
            c1++;
        }NSLog(@"sum of digits of %s = %d\n",n1,sum1);
        

        
        
    }
        
    return 0;
}
