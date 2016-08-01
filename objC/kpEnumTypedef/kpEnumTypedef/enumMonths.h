//
//  enumMonths.h
//  kpEnumTypedef
//
//  Created by MacMan on 7/29/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface enumMonths : NSObject

@property (readonly)int selectedMonth;



-(int)randomMonthGen;
-(id)initWithSelectedMonth;
-(void)displayMonth;

-(void)payRates:(int)rate;
-(void)thisDef;


@end
