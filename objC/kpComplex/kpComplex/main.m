//
//  main.m
//  kpComplex
//
//  Created by knax on 6/20/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex: NSObject
-(void) setReal: (double) a;
-(void) setImaginary: (double) b;
-(void) print; //display as "a + bi"
-(double) real;
-(double) imaginary;

@end

@implementation Complex {
    double real;
    double imaginary;
    
}
-(void) setReal: (double) a{
    
    real = a;
}

-(void) setImaginary: (double) b{
    imaginary = b;
}

-(double) real{
    return real;
}

-(double) imaginary{
    
    return imaginary;
    }
-(void)print{
    NSLog(@"display comlplex number:%f+%fi",real,imaginary);
}



@end
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Complex *myComplex = [[Complex alloc]init];
        [myComplex setReal:5];
        [myComplex setImaginary: 23];
        [myComplex print];
        
        
        
    }
    return 0;
}
