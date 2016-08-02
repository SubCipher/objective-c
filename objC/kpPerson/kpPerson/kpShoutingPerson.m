//
//  kpShoutingPerson.m
//  kpPerson
//
//  Created by MacMan on 8/1/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import "kpShoutingPerson.h"

@implementation kpShoutingPerson

-(void)saySomething:(NSString *)greeting{
    
    NSString *uppercaseGreeting = [greeting uppercaseString];
    //NSLog(@"%@",uppercaseGreeting);<< instead of this use super (see below)
    /*super allows you to call the oringial implementation of saySomething method */
    [super saySomething:uppercaseGreeting];
    
}
@end
