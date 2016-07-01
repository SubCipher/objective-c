//
//  main.m
//  kpCalculaor01
//
//  Created by knax on 6/29/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Calculator: NSObject


-(void) setAccumulator: (double) value;
//-(void) sanitize: (double) value00 ops: (char) operator secValue: (double) value01;
-(void) sanitize: (char) value;
-(void) End;
-(double) S;


//-(double) accumulator;


-(double) add: (double) value;
-(double) subtract: (double) value;
-(void) divide: (double) value;
-(double) multiply: (double) value;


@end

@implementation Calculator{
    double accumulator;
}

-(void) setAccumulator: (double) value{
    
    accumulator = value;
}
//need improvement
// refactor to use less code

//-(void) sanitize: (double) value00 ops: (char) operator secValue: (double) value01{
//    if( ( value00 >= 0  && value00 <= 9999999) &&
//       (operator == '+' || operator == '-' || operator == '*' || operator == '/' || operator == 'S' || operator =='E') &&
//       ( value01 >= 0  && value01 <= 9999999)) {
//        NSLog(@"thank you");
//        }
//    else{
//        
//        NSLog(@"bad input please enter a digit");
//
//    };
//}



-(void) sanitize: (char) value {
    //read value into array and filter data for valid/invalid chars
        }


-(double)add: (double) value {
    NSLog(@"%lg + % lg is: %lg",accumulator, value,(accumulator+= value));
    return accumulator;
        
    }
-(double)subtract: (double) value {
     NSLog(@"%lg - % lg is: %lg",accumulator, value,(accumulator -= value));
    return accumulator;
}
-(void) divide: (double) value{
    if (value != 0 && accumulator != 0){
        NSLog(@"%lg / % lg is: %lg",accumulator, value,(accumulator/= value));
        
    }
    else {
        NSLog(@"divsion by 0 not allowed");
        
    }
}

-(double) multiply: (double) value{
     NSLog(@"%lg * % lg is: %lg",accumulator, value,(accumulator *= value));
    return accumulator;
    }

-(void) End {
    accumulator = 0;
    NSLog(@"this is the E option to quit (reset accumulator to %lg)",accumulator);
}


-(double) S {
    double newValue;
    scanf(" %lg",&newValue);
    accumulator = newValue;
        NSLog(@"this is the S option accumulator value is now %lg",accumulator);
    return accumulator;
}


@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Calculator *sCal = [[Calculator alloc]init];
        
        char expression[10];
        NSLog(@"enter an expression");
        scanf(" %c",expression);
        
        //[sCal sanitize: value00 ops: operator secValue: value01];
        [sCal sanitize: *expression];
       // [sCal setAccumulator:expression];
        
//        switch ( operator) {
//            case '+':
//                
//                [sCal add: value01];
//                break;
//                
//            case '-':
//               [sCal subtract: value01];
//                break;
//                
//            case '*':
//                [sCal multiply: value01];
//                break;
//                
//            case '/':
//               [sCal divide: value01];
//                break;
//
//                
//            case 'S':
//                [sCal S];
//                break;
//
//            case 'E':
//                [sCal End];
//                break;
//                
//        }
        
        
        
    
    }
    return 0;
}















