//
//  kpFraction.m
//  kpComplex
//
//  Created by knax on 7/6/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import "kpFraction.h"
#import "kpFraction+mathOps.h"
#import "kpFraction+comparison.h"
#import "kpFraction+Trig.h"

static int addCountVal;
static int gCounter;

@interface kpFraction()

-(void) reduce;
@end


@implementation kpFraction

@synthesize numerator,denominator,wholeNumber;

+(kpFraction *)allocF{
    extern int gCounter;
    ++gCounter;
    return [kpFraction alloc];
}

+(int) count
{
    extern int gCounter;
    return gCounter;
}

//-(void)twoNumbers:(int)Num1 secNum:(int)Num2{
//    
//   int really = [self addThis:Num1 secNum:Num2];
//    NSLog(@"its A Thing = %d",really);
//    
//}



- (BOOL)isEqualTo:(id)object{
    return self == object;
}
- (BOOL)isLessThanOrEqualTo:(id)object{
    return self <= object;
    
}
- (BOOL)isLessThan:(id)object{
    
    return self < object;
}
- (BOOL)isGreaterThanOrEqualTo:(id)object{
    
    return self >= object;
}
- (BOOL)isGreaterThan:(id)object{
    
    return self > object;
}
- (BOOL)isNotEqualTo:(id)object{
    
    return self != object;
    
}
- (BOOL)doesContain:(id)object{
    
    return 0;
}
- (BOOL)isLike:(NSString *)object{
    
    return 0;
}
- (BOOL)isCaseInsensitiveLike:(NSString *)object{
    
    return 0;
}

-(BOOL)eqCheck: (kpFraction*)ifEq1 checkE2:(kpFraction *)ifEq2{
    BOOL eqResults = [ifEq2 isEqual:ifEq1 secIsEqualVal:ifEq2];
    return eqResults;
}
-(void)compareThis:(kpFraction *)compVal1 comp2:(kpFraction *)compVal2{
    int comparedValue;
    double fractionDeciVal1 = [compVal1 convertToNum];
    double fractionDeciVal2 = [compVal2 convertToNum];
     
    comparedValue = [compVal1 compareFractions:fractionDeciVal1 secOne:fractionDeciVal2];
    
    
    NSLog(@"this is the compared value %d",comparedValue);
}

-(kpFraction *) add: (kpFraction *) f{
    
    //new fraction instance to store result of addition
    kpFraction *results = [[kpFraction alloc]init];
    ++addCountVal;
    
    results.numerator = numerator * f.denominator + denominator * f.numerator;
    results.denominator = denominator * f.denominator;
    [results reduce];
    [results print];
    kpFraction *flippedOut = [results invert:results];
    [flippedOut print];
    
    
    [results print];
    return results;
    
}



-(kpFraction *) subtract: (kpFraction *) s{
    kpFraction *sFraction = [[kpFraction alloc] init];
    
    
    sFraction.numerator = numerator * s.denominator - denominator * s.numerator;
    sFraction.denominator = (denominator * s.denominator);
    [sFraction reduce];
    [sFraction print];
    
    return sFraction;
    
}

-(kpFraction *) multiply: (kpFraction *) m{
    kpFraction *multiResult = [[kpFraction alloc] init];
    
    multiResult.numerator = numerator * m.numerator;
    multiResult.denominator = denominator * m.denominator;
    [multiResult reduce];
    return multiResult;
    
}

-(kpFraction *) divide: (kpFraction *) d{
    kpFraction *divResult = [[kpFraction alloc]init];

    divResult.numerator = numerator * d.denominator;
   divResult.denominator = denominator * d.numerator;
    [divResult reduce];
    return divResult;

}



-(void) print{
    NSLog(@"fraction is %i/%i",numerator, denominator);
}
-(void) setTo: (int) n over: (int) d{
    numerator = n;
    denominator = d;
}

-(double) convertToNum {
    if (denominator != 0)
        return (double) numerator / denominator;
    else
        return NAN;
}


-(void) reduce{
    int n = numerator;
    int d = denominator;
    int temp;
    
    while (d != 0){
        temp = n % d;
        n = d;
        d = temp;
    }
    numerator /= n;
    denominator /= n;
    
    if (numerator > denominator){
        
        wholeNumber = numerator/denominator;
        numerator = numerator % denominator;
    }
}


-(void)showAddCount{
    extern int addCountVal;
    NSLog(@"number of times add method is invoked: %d times",addCountVal);
    }

-(void)calculateSin{
    
    NSLog(@"the sine result is:%f",[self sin:self]);
}



@end

