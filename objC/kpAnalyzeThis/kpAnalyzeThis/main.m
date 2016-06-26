//
//  main.m
//  kpAnalyzeThis
//
//  Created by knax on 6/25/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
     
        char c;
        NSLog(@"enter a character");
        scanf(" %c",&c);
        
        if( (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') )
            NSLog (@"the character is a letter");
       
        else if
            (c >= '1' &&  c <= '9')
            NSLog(@"the character is a digit");
        
        else
            NSLog(@"the character is a special character");
       
        
        
        
    }
    return 0;
}
