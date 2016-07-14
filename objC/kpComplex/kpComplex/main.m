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

        id dataValue00;
        id dataValue01;
        id result;
        
        kpFraction *f1 = [[kpFraction alloc] init];
        kpFraction *f2 = [[kpFraction alloc] init];
        /* fracResult is replaced by id dataValue via Dynamic binding using id Type */
        //kpFraction *fracResult;
        
        
        kpComplex *c1 = [[kpComplex alloc] init];
        kpComplex *c2 = [[kpComplex alloc] init];
        /* compResult is replaced by id dataValue via Dynamic binding using id Type */

        //kpComplex *compResult;
        
        
        [f1 setTo: 1 over: 10];
        [f2 setTo: 2 over: 15];
        
        [c1 setReal: 18.0 andImaginary: 2.5];
        [c2 setReal: -5.0 andImaginary: 3.2];

        [c1 print]; NSLog(@"        +"); [c2 print];
        NSLog (@"------------------");
        //compResult = [c1 add: c2];
        dataValue00 = [c1 add: c2];
        [dataValue00 print];
        
        [f1 print]; NSLog (@"       +"); [f2 print];
        NSLog(@"----------");
        //fracResult = [f1 add: f2];
      
        dataValue00 = f1 ;
        dataValue01 = f2;
        result = [dataValue00 add:  dataValue01];
        [result reduce];
        
        kpXYPoints *testPoints = [[kpXYPoints alloc]init];
        
        [testPoints setPoints: 4.5 setY: 5.5];
        dataValue00 = testPoints;
        [dataValue00 printPoints];
            }
    return 0;
}
