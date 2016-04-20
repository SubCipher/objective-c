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

-(void)saySomething{
    [self sayItLoud:@"i'm black and i'm proud"];
}


-(void)sayItLoud: (NSString *) instance{
    
    NSLog(@"%@",instance);
}


-(int)magicNumber{
    return 43;
}


@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        
        
        XYZPerson *thatPerson = [[XYZPerson alloc] init];
     
        [thatPerson saySomething];
        
        
        XYZPerson *someObject = [[XYZPerson alloc] init];
        
        int x = [someObject magicNumber];
        
        
        
        
    return x;
    }
}





















