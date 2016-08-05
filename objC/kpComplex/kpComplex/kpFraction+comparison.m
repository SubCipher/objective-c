//
//  kpFraction+comparison.m
//  kpComplex
//
//  Created by MacMan on 8/4/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import "kpFraction+comparison.h"

@implementation kpFraction (comparison)

-(BOOL)isEqual:(kpFraction *)f1 secFraction:(kpFraction *) f2{
    if([f1 isEqual:f2])
        return YES;
    else
        return NO;
}


-(int)compare:(kpFraction *)f1 secFraction:(kpFraction *) f2{
    if(f1 < f2)
        return -1;
    
    else if (f1 == f2)
        return 0;
    
    else
        return 1;
        
}


@end
