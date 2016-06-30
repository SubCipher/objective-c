//
//  main.m
//  kpPrimeClass
//
//  Created by knax on 6/26/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface kpPrimeClass: NSObject

-(void) setMiniPrime: (int) v1;
-(void) setMaxPrime: (int) v2;


//-(int) value1;
//-(int) value2;

-(int) isValid: (int) checkForValid_Num;

-(void)primeTable:(int)startRange endCheck:(int) endRange ;


@end

@implementation kpPrimeClass{
    int miniPrime;
    int maxPrime;
}

-(void) setMiniPrime: (int) setV1 {
    setV1 = miniPrime;
}

-(void) setMaxPrime: (int) setV2 {
    setV2 = maxPrime;
}


-(int) isValid: (int)checkForValid_Num {
    
    if( checkForValid_Num >= 0  && checkForValid_Num <= 999999)
        NSLog(@"is a valid number");
    
    else if ( checkForValid_Num < 0 )
        NSLog(@"is a valid operation using negitive integers");
    
    else NSLog(@"%d is not valid.  Please try agin",checkForValid_Num);
    return checkForValid_Num;
}


-(void)primeTable:(int)startRange endCheck:(int) endRange {
    int count = 0;
    int isPrime =0;
    
    int p,d =0;
    
    for ( p = startRange ; p <= endRange; ++p){
       
         count = 0;
        for( d = 1 ; d < p; ++d){
           
            if( p % d == 0){
               count++;
                }
            }
        if(count >=2 ){
            NSLog(@"prime status for:%i (%i %s %i= %i |%i) NOT prime \n",p, p,"%",d,p%d,count);
        }
        else{
            
            NSLog(@"prime status for:%i (%i %s %i= %i |%i) * Yes is prime\n",p, p,"%",d,p%d,count);
            ++isPrime;
        }
    
    }
    NSLog(@"toal number of prime numbers from %i to %i is: %i",startRange,endRange,isPrime);
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int startPrimeCheck;
        int endPrimeCheck;
        
        kpPrimeClass *findPrime1 = [[kpPrimeClass alloc]init];
        
        NSLog(@"enter starting point:");
        scanf("%d",&startPrimeCheck);
        NSLog(@"you entered int# %d",startPrimeCheck);
        [findPrime1 isValid: startPrimeCheck];
        [findPrime1 setMaxPrime: endPrimeCheck];
        
        NSLog(@"enter max table range to search for prime");
        scanf("%d",&endPrimeCheck);
        NSLog(@"you entered int# %d",endPrimeCheck);
        [findPrime1 isValid: endPrimeCheck];
        [findPrime1 setMaxPrime: endPrimeCheck];
        
        
        
        [findPrime1 primeTable:(int)startPrimeCheck endCheck:(int) endPrimeCheck];
        
        
        
        
    }
    return 0;
}
