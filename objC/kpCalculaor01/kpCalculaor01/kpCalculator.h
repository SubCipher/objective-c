//
//  kpCalculator.h
//  kpCalculaor01
//
//  Created by MacMan on 8/8/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface kpCalculator : NSObject


//@interface Calculator: NSObject

-(void) setAccumulator: (double) value;
//-(void) sanitize: (double) value00 ops: (char) operator secValue: (double) value01;
//-(void) sanitize: (char) value;
-(void) End;
-(double) S;


//-(double) accumulator;


-(double) add: (double) value;
-(double) subtract: (double) value;
-(void) divide: (double) value;
-(double) multiply: (double) value;

@end
