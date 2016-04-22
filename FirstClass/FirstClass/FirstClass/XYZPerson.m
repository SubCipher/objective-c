//
//  XYZPerson.m
//  FirstClass
//
//  Created by knax on 4/13/16.
//  Copyright © 2016 knax. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYZPerson.h"

@implementation OBJc_class

//one

//method implementation


-(void)instance_Method1{
    [self methodImplementation1 :@"this is the content for M1"];
}

-(void)methodImplementation1: (NSString *) parameter{
    NSLog(@"%@",parameter);
}


-(void)instance_Method2{
    [self instance_of_M2 :@"text read into object"];
}

//this declares the selector
-(void) instance_of_M2 :(NSString *) randomName {
    NSLog(@"%@",randomName);
   
}


-(int)instance_Method3 {
    return 43;
}


@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        OBJc_class *classInstance = [[OBJc_class alloc] init];
        [classInstance instance_Method1];
        
       
        
        
        
        
        
        
        
        OBJc_class *classInstance2 = [[OBJc_class alloc] init];
        [classInstance2 instance_Method2];
        
        OBJc_class *classInstance3 = [[OBJc_class alloc] init];
        int x;
        x = [classInstance3 instance_Method3];
        
        NSLog(@"%d",x);
        
    }
}





















