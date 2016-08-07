//
//  main.m
//  kpComplex
//
//  Created by knax on 6/20/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "kpComplex.h"
#import "kpFraction.h"
#import "kpXYPoints.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        kpComplex *myComplex = [[kpComplex alloc]init];
//        
//        
//        [myComplex setReal: 33 andImaginary: 166];
//        [myComplex print];
//        
//        kpFraction *myFraction = [[kpFraction alloc]init];
//        [myFraction setNumerator: 5 andDenominator: 12];
//        [myFraction print];

        id FractionDataValue00;
        id FractionDataValue01;
        id FractionResult;
        
        
        kpFraction *f1 = [[kpFraction allocF] init];
        kpFraction *f2 = [[kpFraction allocF] init];
        /* fracResult is replaced by id dataValue via Dynamic binding using id Type */
        //kpFraction *fracResult;
        
        
        kpComplex *c1 = [[kpComplex alloc] init];
        kpComplex *c2 = [[kpComplex alloc] init];
        /* compResult is replaced by id dataValue via Dynamic binding using id Type */

        //kpComplex *compResult;
        
        kpFraction *itsAthing = [kpFraction new];
        
        [itsAthing twoNumbers:4 secNum:8];
        
        
        
        [f1 setTo: 1 over: 10];
        [f2 setTo: 3 over: 18];
        //compare here
        kpFraction *stillAThing = [kpFraction new];
        
        [stillAThing compareThis:f1 comp2:f2];

        
        
        [c1 setReal: 18.0 andImaginary: 2.5];
        [c2 setReal: -5.0 andImaginary: 3.2];

        [c1 print]; NSLog(@"        +"); [c2 print];
        NSLog (@"------------------");
        FractionDataValue00 = [c1 add: c2];
        [FractionDataValue00 print];
        
        [f1 print]; NSLog (@"       +"); [f2 print];
        NSLog(@"----------");
        //fracResult = [f1 add: f2];
      
        FractionDataValue00 = f1;
        FractionDataValue01 = f2;
    
               
        FractionResult = [FractionDataValue00 add:  FractionDataValue01];
        kpXYPoints *testPoints = [[kpXYPoints alloc]init];
        [FractionResult showAddCount];
        
        [testPoints setPoints: 4.5 setY: 5.5];
        FractionDataValue00 = testPoints;
        [FractionDataValue00 printPoints];
        
         NSLog(@"fractions allocated: %i",[kpFraction count]);
            }
   
    return 0;
}
