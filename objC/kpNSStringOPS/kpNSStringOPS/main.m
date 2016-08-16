//
//  main.m
//  kpNSStringOPS
//
//  Created by MacMan on 8/14/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *str1 = @"This is string A";
        NSString *res;
        NSRange subrange;
        
        //extract first 3 chars from string
        
        res = [str1 substringToIndex:3];
        NSLog(@"first 3 chars from str1: %@",res);
        
        //extract chars to end of string starting at index 5
        
        res =[str1 substringFromIndex:5];
        NSLog(@"chars from index 5 to end: %@",res);
        
        
        //extract chars from index 8 through 13 (6 chars)
        
        res = [[str1 substringFromIndex:8] substringToIndex:6];
        NSLog(@"chars from index 8 through 13: %@",res);
        
        //an easier way to do above extraction
        
        res = [str1 substringWithRange:NSMakeRange(8,6)];
        
        //locate one string inside another
        
        subrange = [str1 rangeOfString:@"string A"];
        NSLog(@"String is at index %lu,length is %lu",subrange.location,subrange.length);
        
        
        subrange = [str1 rangeOfString: @"string B"];
        
        if(subrange.location == NSNotFound)
            NSLog(@"String not found");
        else
            NSLog(@"String is at index %lu, length is %lu",subrange.location,subrange.length);
        
        
        
        
    }
    return 0;
}
