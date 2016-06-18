//
//  main.m
//  prog2
//
//  Created by knax on 6/17/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction: NSObject
-(void) print;
-(void) setDenominator: (int) n;
-(void) setNumerator: (int) m;
-(int) denominator;
-(int) numerator;
@end


@implementation Fraction{
    int numerator;
    int denominator;
}

-(void) print{
    NSLog(@"fraction is %i/%i",numerator, denominator);
          }
-(void) setNumerator: (int) n {
    numerator = n;
}
-(void) setDenominator: (int) m{
    denominator = m;
}


-(int) numerator{
    return numerator;
}

-(int) denominator{
    return denominator;
}


@end





int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Fraction *myFraction = [[Fraction alloc]init];
        [myFraction setNumerator: 5];
        [myFraction setDenominator: 12];
        
        
        NSLog(@"this fraction %i/%i",[myFraction numerator],[myFraction denominator]);
        
        
        
        NSLog(@"Hello, World!");
    }
    return 0;
}
