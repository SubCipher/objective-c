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
    [self methodImplementation1 :@"this is the content for MI-(voi"];
}

-(void)methodImplementation1: (NSString *) parameter{
    
    NSLog(@"%@",parameter);
}


-(void)instance_Method2{
    [self run1 :@"text read into object"];
    
}


-(void)run1 :(NSString *){
   
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
        
        
    return x;
    }
}





















