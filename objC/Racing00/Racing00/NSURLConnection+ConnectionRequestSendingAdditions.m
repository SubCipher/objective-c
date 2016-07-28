//
//  NSURLConnection+ConnectionRequestSendingAdditions.m
//  Racing00
//
//  Created by MacMan on 7/27/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import "NSURLConnection+ConnectionRequestSendingAdditions.h"

@implementation NSURLConnection (ConnectionRequestSendingAdditions)

+(NSData *)sendSynchronousRequestWithURLString:(NSString *)URLString{
    
    NSURL *URL = [NSURL URLWithString:URLString];
    NSURLRequest * request = [NSURLRequest requestWithURL:URL];
    NSData * data = [NSURLConnection sendSynchronousRequest:request
                                          returningResponse:nil
                                                      error:nil];
    return data;
    
}

@end

