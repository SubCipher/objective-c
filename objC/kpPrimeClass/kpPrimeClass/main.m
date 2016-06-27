//
//  main.m
//  kpPrimeClass
//
//  Created by knax on 6/26/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface kpPrimeClass: NSObject

-(void) setNum: (int) v1;
-(void) setRangeToCheck: (int) v2;


//-(int) value1;
//-(int) value2;

-(int) isValid: (int) checkNum;

-(void) primeTest:(int) numToCheck maxRange:(int) range;


@end

@implementation kpPrimeClass{
    int num;
    int rangeToCheck;
}

-(void) setNum: (int) setV1 {
    setV1 = num;
    }

-(void) setRangeToCheck: (int) setV2 {
    setV2 = rangeToCheck;
}



-(int) isValid: (int) checkNum {
    
    if( checkNum >= 0  && checkNum <= 50 )
        NSLog(@"is a valid number");
    
        else if ( checkNum < 0 )
          NSLog(@"is a valid operation using negitive integers");
    
    else NSLog(@"%d is not valid.  Please try agin",checkNum);
    return checkNum;
}


-(void) primeTest:(int) numToCheck maxRange:(int) range {
    int isPrime = 0;
    int p, d;
    
    for ( p = numToCheck; p <= range; ++p)
        isPrime =1;
    
        for (d = numToCheck; d < range; ++d )
            if (p % d == 0 )
                    isPrime = 0;
                    NSLog (@"%i is a prime number ** ",numToCheck);
    
        if ( isPrime != 0 )
            NSLog (@"%i is not a prmime number *** ",numToCheck);

}


@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int num;
        int rangeToCheck;
        
        kpPrimeClass *findPrime1 = [[kpPrimeClass alloc]init];
        
        NSLog(@"enter prime multiple:");
        scanf("%d",&num);
        NSLog(@"you entered int# %d",num);
        [findPrime1 isValid: num];
        [findPrime1 setRangeToCheck: num];
        
        NSLog(@"enter max range to search for prime numbers");
        scanf("%d",&rangeToCheck);
         NSLog(@"you entered int# %d",rangeToCheck);
        [findPrime1 isValid: rangeToCheck];
        [findPrime1 setRangeToCheck: rangeToCheck];
        
        
        
        [findPrime1 primeTest: num maxRange: rangeToCheck];
        
        
        
        
    
    }
    return 0;
}
