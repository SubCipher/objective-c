//
//  NSURLConnection+ConnectionRequestSendingAdditions.h
//  kpRacing
//
//  Created by MacMan on 7/26/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSURLConnection (ConnectionRequestSendingAdditions)

+(NSData *)sendSynchronousRequestWithURLString:(NSString *)URLString;

@end
