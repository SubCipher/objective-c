//
//  kpFraction+comparison.h
//  kpComplex
//
//  Created by MacMan on 8/4/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import "kpFraction.h"

@interface kpFraction (comparison)

-(BOOL)isEqual:(kpFraction *)f1 secFraction:(kpFraction *)f2;

-(int)compare:(kpFraction *)f1 secFraction:(kpFraction *)f2;


@end
