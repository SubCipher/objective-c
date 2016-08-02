//
//  main.m
//  kpEnumTypedef
//
//  Created by MacMan on 7/29/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "enumMonths.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        enumMonths * findMonth = [[enumMonths alloc]initWithSelectedMonth];
        [findMonth displayMonth];
        [findMonth payRates: 4];

        [findMonth thisDef];
        
        typedef enumMonths enumObjCopy;
    
        enumObjCopy *e1 = [[enumMonths alloc]initWithSelectedMonth],
                    *e2 = [[enumMonths alloc]initWithSelectedMonth];
        
        [e1 displayMonth];
        [e2 displayMonth];
           }
    
    return 0;
}
