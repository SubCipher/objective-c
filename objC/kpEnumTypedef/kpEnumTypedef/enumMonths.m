//
//  enumMonths.m
//  kpEnumTypedef
//
//  Created by MacMan on 7/29/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import "enumMonths.h"

@implementation enumMonths

enum month {january,february,march,arpil,may,june,july,august,september,october,november,december};
enum month amonth;
int days;

-(void)selectMonth:(int)thisMonth{
    
    switch(amonth){
        case january:
        case march:
        case may:
        case july:
        case august:
        case october:
        case december:
            days = 31;
        case arpil:
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
        NSLog(@"Number of days is %i",days);
    if( amonth == february)
        NSLog(@"...or 29 if it's a leap year");

}

@end
