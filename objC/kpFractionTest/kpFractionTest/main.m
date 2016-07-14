//
//  main.m
//  kpFractionTest
//
//  Created by knax on 6/30/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import "kpFraction.h"
#import "kpEmonths.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        kpFraction *aFraction = [[kpFraction alloc] init];
//        kpFraction *bFraction = [[kpFraction alloc]init];
//        kpFraction *resultFraction;
//        
//        [aFraction setTo:3 over:5];
//        [bFraction setTo:1 over:2];
//        [aFraction print];
//         NSLog(@"*");
//        [bFraction print];
//        NSLog(@"=");
//        
//        resultFraction = [aFraction multiply:bFraction];
//        [resultFraction print];
//        
//        
//        kpFraction *a,*b, *c;
//        
//       
//        
//        a = [[kpFraction allocF]init];
//        b = [[kpFraction allocF]init];
//        c = [[kpFraction allocF]init];
//        
//        NSLog (@"Fractions allocated: %i",[kpFraction count]);
//        NSLog(@"Fractions allocated %i",[kpFraction count]);
        
        kpEmonths *myEmonths = [[kpEmonths alloc] init];
        
        NSLog(@"Enter month number: ");
       
        
        [myEmonths setMonth: 7];
        [myEmonths takeAmonth];
 
        
                   }
    return 0;
}











