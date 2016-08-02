//
//  kpFraction+mathOps.h
//  kpComplex
//
//  Created by MacMan on 7/31/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import "kpFraction.h"



@interface kpFraction (mathOps)

@property int numerator,denominator, wholeNumber;

-(kpFraction *) add: (kpFraction *) f;

-(kpFraction *) subtract: (kpFraction *) f;
-(kpFraction *) multiply: (kpFraction *) f;
-(kpFraction *) divide: (kpFraction *) f;



@end
