//
//  main.m
//  kpPrimeClass
//
//  Created by knax on 6/26/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface kpPrimeClass: NSObject

-(void) setValue1: (int) v1;
-(void) setValue2: (int) v2;


//-(int) value1;
//-(int) value2;

-(int) isValid: (int) checkNum;

-(void) primeTest:(int) p maxInt:(int) d;


@end

@implementation kpPrimeClass{
    int value1;
    int value2;
}

-(void) setValue1: (int) setV1 {
    setV1 = value1;
    }

-(void) setValue2: (int) setV2 {
    setV2 = value2;
}



-(int) isValid: (int) checkNum {
    
    if(checkNum  >= '0' && checkNum  <= '9')
        NSLog(@"is a valid number");
    
        else if ( checkNum  <=  '0' && checkNum  >= '9')
          NSLog(@"is a valid operation using negitive integers");
    
    else NSLog(@"%d is not valid.  Please try agin",checkNum);
    return checkNum;
}


-(void) primeTest:(int) v1 maxInt:(int) v2 {
    int isPrime = 0;
    int p, d;
    
    for ( p = v1; p <= v2; ++p)
        isPrime =1;
    
        for (d = v1; d < p; ++d )
            if (p % d == 0 )
                isPrime = 0;
                NSLog (@"%i is a prime number ** ",p);
    
        if ( isPrime != 0 )
            NSLog (@"%i is not a prmime number *** ",p);

}


@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int value1;
        int value2;
        
        kpPrimeClass *findPrime1 = [[kpPrimeClass alloc]init];
        
        NSLog(@"enter prime multiple:");
        scanf("%d",&value1);
        NSLog(@"you entered int# %d",value1*2);
        [findPrime1 isValid: value1];
        [findPrime1 setValue1: value1];
        
        NSLog(@"enter max range to search for prime numbers");
        scanf("%d",&value2);
         NSLog(@"you entered int# %d",value2);
        [findPrime1 isValid: value2];
        [findPrime1 setValue2: value2];
        
        
        
        [findPrime1 primeTest: value1 maxInt: value2];
        
        
        
        
        
    
    }
    return 0;
}
