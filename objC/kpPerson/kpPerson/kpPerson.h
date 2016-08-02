//
//  kpPerson.h
//  kpPerson
//
//  Created by MacMan on 8/1/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface kpPerson : NSObject


@property (readonly) NSString *firstName;
@property (readonly) NSString *lastName;

@property NSDate * yearOfBirth; //NSNumber would be over kill in this instance

+(id)person;


-(void)sayHello;
-(void)sayHelloSpanish;
-(void)sayHelloFrench;
-(void)sayHelloMandarin;

-(void)saySomething:(NSString *) greeting;

-(void)saySomethingSpanish:(NSString *) greeting;
-(void)saySomethingFrench:(NSString *) greeting;
-(void)saySomethingMandarin:(NSString *) greeting;


@end
