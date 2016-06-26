//
//  main.m
//  firstClass
//
//  Created by knax on 6/17/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction: NSObject
-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
-(int) numerator;
-(int) denominator;
-(double) convertToNum;


@end

@implementation Fraction{
    int numerator;
    int denominator;
    
}

-(void) print{
    NSLog (@"%i/%i", numerator, denominator);
}

-(void) setNumerator: (int) n{
    numerator =n;
}


-(void) setDenominator: (int) d{
    denominator =d;
}

-(int) numerator {
    return numerator;
}

-(int) denominator {
    return denominator;
}


-(double) convertToNum {
    if (denominator != 0)
        return (double) numerator /denominator;
    else
        return NAN;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //create an instance of Fraction
        Fraction *aFraction;

        
        aFraction = [Fraction alloc];
        aFraction = [aFraction init];
        //these three lines can be combined to form: "Fraction *myFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc]init];
        
        //set fraction values
        
        [aFraction setNumerator: 1];
        [aFraction setDenominator: 4];
//        [bFraction setNumerator: 2];
//        [bFraction setDenominator: 8];
        
        
        //Display the fraction
        
        [aFraction print];
        NSLog(@" =");
        NSLog(@"%g", [aFraction convertToNum]);
        
        [bFraction print];
        NSLog(@" =");
        NSLog(@"%g", [bFraction convertToNum]);
       
            }
    return 0;
}
