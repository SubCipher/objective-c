//
//  main.m
//  kpWorkingWithNumbers
//
//  Created by MacMan on 8/13/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //integer value
        
        NSNumber *myNumber, *floatNumber, *intNumber;
        NSInteger myInt,myInt2;
        
        //intNumber = [NSNumber numberWithInteger:100];
        //see short hand using '@' to create NSObjects.
        intNumber =@100;
        
        intNumber = @5;
        NSNumber *intNumber2 = @5;
        
        NSInteger *result;
        myInt = [intNumber integerValue];
        
        myInt2 = [intNumber2 integerValue];
        result = &myInt2;
        
        myInt = [intNumber integerValue];
        NSLog(@"%li",(long)myInt);
        
        //long value
        
        //myNumber = [NSNumber numberWithLong:0xabcdef];
        myNumber = @0xabcdef;
        
        NSLog(@"%lx",[myNumber longValue]);
        
        //char value
        
        //myNumber = [NSNumber numberWithChar:88];
        myNumber = @88;
        
        NSLog(@"%c",[myNumber charValue]);
        
        
        //float value
    
        //floatNumber = [NSNumber numberWithFloat:100.00];
        floatNumber = @100.00;
        
        NSLog (@"%g",[floatNumber floatValue]);
        
        
        //double
        
        myNumber = [NSNumber numberWithDouble:12345e+15];
        NSLog(@"%lg",[myNumber doubleValue]);
         
        //wrong access here
        
        NSLog(@"%li",(long)[myNumber integerValue]);
        
        //test two numbers for equality
        
        if([intNumber isEqualToNumber:floatNumber] == YES)
            NSLog(@"Numbers are equal");
        else
            NSLog(@"Numbers are not equal");
        
        //Test of one Number is <,== or > second number
        
        if([intNumber compare:myNumber] == NSOrderedAscending)
            NSLog(@"first number is less than second");
        
        
        
    }
    return 0;
}
