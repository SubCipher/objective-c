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


@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //create an instance of Fraction
        Fraction *myFraction;

        
        myFraction = [Fraction alloc];
        myFraction = [myFraction init];
        //these three lines can be combined to form: "Fraction *myFraction = [[Fraction alloc] init];
        Fraction *f2 = [[Fraction alloc]init];
        
        //set fraction values
        
        [myFraction setNumerator: 1];
        [myFraction setDenominator: 3];
        [f2 setNumerator: 2];
        [f2 setDenominator: 8];
        
        
        //Display the fraction
        
        NSLog(@"The value of myFraction is:");
        [myFraction print];
        [f2 print];
        
        NSLog(@"f2 return value: f2 numerator/denominator %i/%i",[f2 numerator],[f2 denominator]);
           }
    return 0;
}






