//
//  kpFraction+comparison.h
//  kpComplex
//
//  Created by MacMan on 8/4/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import "kpFraction.h"

@interface kpFraction (comparison)

-(BOOL)isEqual:(kpFraction *)isE1 secIsEqualVal:(kpFraction *)isE2;
    

-(double)compareFractions:(double)f1 secOne:(double)f2;

@end
