//
//  main.m
//  chapter4
//
//  Created by knax on 6/20/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
    /* Exercise #2
     write a program that converts 27degrees Fahrenheit (F) to Celsius (C)using the formula:
     C = (F - 32)/ 1.8) */
        
        double F = 27;
        double C = (F - 32)/ 1.8;
        
        NSLog(@"%f degrees Fahreheit is to %f degrees Celsius",F,C);
        
        /*exercise #4
         write a program to evaluate the polynomial shown here. (To calculate the exponents, just do straight multiplication; there is no exponentiation operator in Objective-C.)
            3(x^3) - 5(x^2) + 6; for x = 2.55
         */
        
        float x =2.55;
        float answer;
        
        answer = (x*x*x)*3 - (x*x)*5;
        NSLog(@"results of exercise 4: %f",answer);
        
        
        /*exercise 5: dispaly results of (3.31 x 10^-8 + 2.01 x 10^7) / (7.16 x 10^-6 + 2.01 x 10^-8)*/
        
        int a ;
        float b;
        float answer5;
        
        a = (3.31 * pow(10,-8)) + (2.01 * pow(10,7));
        b = (7.16 * pow(10,-6)) + (2.01 * pow(10,-8));
        answer5 = a /b;
                                 
        NSLog(@"result for exercise 5: %e",answer5);
    
    }
    return 0;
}
