//
//  main.m
//  abClasess
//
//  Created by knax on 7/3/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "classA.h"
#import "classB.h"
#import "classC.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
        classA *myAclass = [[classA alloc]init];
        classB *myBclass = [[classB alloc]init];
        classC *myCclass = [[classC alloc]init];
        
        [myAclass initVar: 8];
        [myAclass printVar];
        
        [myBclass initVar: 12];
        [myBclass printVar];
        
        [myCclass initVar:4000];
        [myCclass printVar];
    
    
    
    }
    return 0;
}
