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

-(void)sayHello{
    [self saySomething:@"hello cc world"];
}

-(void)saySomething: (NSString *)greeting {
    NSLog(@"%@", greeting);
}


@end

// > Start main < function
int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        XYZPerson *thisPerson = [[XYZPerson alloc] init];
        
        [thisPerson sayHello];
        
          }
    return 0;
}





















