//
//  kpPerson.m
//  kpPerson
//
//  Created by MacMan on 8/1/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import "kpPerson.h"

@implementation kpPerson


+(id)person {
    kpPerson *newObject = [[self alloc]init];
    
    return newObject;
}

-(void)sayHello {
    [self saySomething:@"Hello world"]; 
    
}

-(void)saySomething:(NSString *)greeting{
    NSLog(@"%@",greeting);
    
}

-(void)sayHelloSpanish {
    [self saySomething:@"Hola Mundo"];
    
}

-(void)saySomethingSpanish:(NSString *) greeting{
    NSLog(@"%@",greeting);
}

-(void)sayHelloFrench {
    [self saySomething:@"Bonjour le monde"];
}

-(void)saySomethingFrench:(NSString *) greeting{
    NSLog(@"%@",greeting);
}

-(void)sayHelloMandarin {
    [self saySomething:@"Ni hao, shijie"];
}

-(void)saySomethingMandarin:(NSString *) greeting{
    NSLog(@"%@",greeting);
}

@end