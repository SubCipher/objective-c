//
//  main.m
//  kpNSStringObjects
//
//  Created by MacMan on 8/13/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSString *str =@"Programming is fun";
        NSLog(@"%@",str);
        
        
        NSString *str1 = @"this is string A";
        NSString *str2 = @"This is string B";
        NSString *res;
        
        NSComparisonResult compareResult;
        
        //count the characters
        
        NSLog(@"length of str1: %lu",[str1 length]);
        
        //copy a one string to another
        
        res = [NSString stringWithString:str1];
        NSLog(@"copy:%@",res);
        
        //copy one string to the end of another string
        
        str2 = [str1 stringByAppendingString:str2];
        NSLog(@"concatenation: %@",str2);
        
        
        //test is two strings are equal
        
        if([str1 isEqualToString:res] == YES)
            NSLog(@"str1 == res");
        
        else
        {
            NSLog(@"str1 != res");
            
        }
    //test if one string is <,==, or > than another
        
        compareResult = [str1 compare:str2];
        
        if(compareResult == NSOrderedAscending)
            NSLog(@"str1 < str2");
        
        else if (compareResult == NSOrderedSame)
            NSLog(@"str1 == str2");
        
        else //must be NSOrderedDescending
            NSLog(@"str1 > str2");
        
        //convert a string to uppercase
        
        res = [str1 uppercaseString];
        NSLog(@"uppercase conversion: %s",[res UTF8String]);
        
        
        //convert to lowercase string
        
        res = [str1 lowercaseString];
        NSLog(@"lowercase coversion: %@",res);
        NSLog(@"original string %@",str1);
        
        
    }
    return 0;
}
