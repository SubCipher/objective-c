//
//  main.m
//  kpReverseOrderNums
//
//  Created by knax on 6/21/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number,right_digit;
        
        NSLog(@"enter your number.");
        scanf("%i",&number);
        
        while (number != 0){
            right_digit = number %10;
            NSLog (@"%i",right_digit);
            number /= 10;
            
        }
    //DO while reverse digits
        int number1,right_digit1;
        NSLog(@"enter your number:");
        scanf("%i",&number1);
        
        do{
            right_digit1 = number1 % 10;
            NSLog (@"%i",right_digit1);
            number1 /= 10;
        }
        while (number1 != 0);
    
    }
    return 0;
}
