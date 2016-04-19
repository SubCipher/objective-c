//
//  XYZPerson.m
//  FirstClass
//
//  Created by knax on 4/13/16.
//  Copyright © 2016 knax. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYZPerson.h"

@implementation XYZPerson

//one
-(void)sayHello{
    [self saySomething:@"hello cc world"];
}

-(void)saySomething: (NSString *)greeting {
    NSLog(@"%@", greeting);
}

//end one
-(void)sayGoodMorning{
    [self sayItLoud:@"i'm black and i'm proud"];
}

-(void) sayItLoud: (NSString *)sayItLoud{
    NSLog(@"%@", sayItLoud);
}

//greeting two



//end two





@end

// > Start main < function
int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        XYZPerson *thisPerson = [[XYZPerson alloc] init];
        [thisPerson sayHello];
        
        
        XYZPerson *thatPerson = [[XYZPerson alloc] init];
        
        [thatPerson sayGoodMorning];
        
        
          }
    return 0;
}





















