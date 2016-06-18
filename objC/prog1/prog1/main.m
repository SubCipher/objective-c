//
//  main.m
//  prog1
//
//  Created by knax on 6/17/16.
//  Copyright © 2016 stepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int sum;
        int value1 = 25;
        int value2 = 50;
        sum = value1 + value2;
        NSLog(@"the sum of %i + %i is: %i",value1, value2, sum);
    }
    return 0;
}
