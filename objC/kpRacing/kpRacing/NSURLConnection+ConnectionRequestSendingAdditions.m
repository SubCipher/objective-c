//
//  NSURLConnection+ConnectionRequestSendingAdditions.m
//  kpRacing
//
//  Created by MacMan on 7/26/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import "NSURLConnection+ConnectionRequestSendingAdditions.h"

@implementation NSURLConnection (ConnectionRequestSendingAdditions)

+(NSData *)sendSynchronousRequestWithURLString:(NSString *)URLString{
    
    NSURL * URL = [NSURL URLWithString:URLString];
    NSURLRequest * request =[NSURLRequest requestWithURL:URL];
    NSData * data = [NSURLConnection sendSynchronousRequest:request
                                          returningResponse:nil
                                                      error:nil];
    return data;
    
                     
}


@end
