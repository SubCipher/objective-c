//
//  main.m
//  DataTypes
//
//  Created by knax on 6/18/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int integerVar =100;
        float floatingVar = 331.79;
        double doubleVar = 8.44e+11;
        char charVar = 'W';
        
        NSLog(@"integerVar = %i",integerVar);
        NSLog(@"floatingVar = %f",floatingVar);
        NSLog(@"doubleVar = %e",doubleVar);
        NSLog(@"charVar = %c",charVar);
        
        //basic conversions
        
    float f1 =123.125, f2;
    int i1, i2 = -150;
       
    i1 = f1;
    NSLog(@"%f assigned to an int produces %i", f1, i1);
        
    f1 = i2; //integer to floating conversion
    NSLog (@"%i assigned to a float produces %f", i2,f1);
    
        f1 = i2 /100; //integer divided by integer
        NSLog(@"%i divided by 100 produces %f",i2,f1);
        
        f2 = i2 /100.0; //integer divided by a float
        NSLog(@"%i divided by 100.0 produces %f",i2,f2);
        
        f2= (float)i2 /100; //type cast operator
        NSLog(@"(float)%i divided by 100 produces %f",i2,f2);
        
        
        
        
        
        
        
    }
    return 0;
}












