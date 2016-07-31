//
//  enumMonths.m
//  kpEnumTypedef
//
//  Created by MacMan on 7/29/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import "enumMonths.h"

@interface enumMonths()

@property int selectedMonth;
-(void)selectMonth;

@end

@implementation enumMonths

-(int)randomMonthGen{
    _selectedMonth = arc4random()%15;
    return _selectedMonth;
}


-(void)selectMonth{ 
    
    enum month {january =1,february,march,april,may,june,july,august,september,october,november,december};
    enum month amonth;
    int days;

    amonth =[self randomMonthGen];
    
    switch(amonth){
        case january:
        case march:
        case may:
        case july:
        case august:
        case october:
        case december:
            days = 31;
            break;
        case april:
        case june:
        case september:
        case november:
            days = 30;
            break;
        case february:
            days =28;
            break;
        default:
            NSLog (@"bad month number");
            days = 0;
            break;
    }
    if (days != 0)
        NSLog(@"Number of days is %i -amonth= %i",days,amonth);
    if( amonth == february)
        NSLog(@"...or 29 if it's a leap year");

}


-(id)initWithSelectedMonth{
    self = [super init];
    if(self){
    
       [self selectMonth];
        
    }
    return self;
}


@end
