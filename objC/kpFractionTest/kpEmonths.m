//
//  kpEmonths.m
//  kpFractionTest
//
//  Created by knax on 7/13/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import "kpEmonths.h"

@implementation kpEmonths

-(void) setMonth: (int) m{
    _amonth = m;
}

   
    
    
enum month { january = 1,february,march,april,may,june,july,august,september,october,november,december };

-(void) takeAmonth {

switch (_amonth){
        
        
    case january:
    case march:
    case may:
    case august:
    case october:
    case december:
        _days = 31;
        break;
        
    case april:
    case june:
    //case july:
    case september:
    case november:
        _days = 30;
        break;
        
        
    case february:
        _days = 28;
        break;
        
        
    default:
        NSLog(@"bad month number");
        _days = 0;
        break;
}

if (_days != 0 )
NSLog (@"Number of days is %i", _days);
if (_amonth == february )
NSLog (@"...or 29 if it's a leap year");

}

@end
