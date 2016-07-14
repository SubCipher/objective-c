//
//  kpEmonths.h
//  kpFractionTest
//
//  Created by knax on 7/13/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface kpEmonths : NSObject

@property enum month;

@property int amonth, days;


-(void) setMonth: (int) m;
-(void) takeAmonth;



@end
