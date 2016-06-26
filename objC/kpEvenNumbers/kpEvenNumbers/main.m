//
//  main.m
//  kpEvenNumbers
//
//  Created by knax on 6/24/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        int number_to_test, remainder;
        
        NSLog(@"Enter your number to be tested: ");
        scanf("%i",&number_to_test);
        
        remainder = number_to_test % 2;
        
        if (remainder == 0){
            NSLog(@"The number is even.");
        }
        else {
            NSLog (@"the number is odd.");
       
        }
        
    }
    return 0;
}
