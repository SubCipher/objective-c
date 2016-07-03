//
//  main.m
//  kpRectangle
//
//  Created by knax on 6/21/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "kpRectangle.h"
#import "kpSquare.h"
#import "kpXYZpoints.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        kpRectangle *myRectangle =[[kpRectangle alloc]init];
        
        
        [myRectangle setWidth:5 andHeight: 8];
        NSLog(@"rectangle perimeter = %d",[myRectangle perimeter]);
        NSLog(@"rectangle area = %d",[myRectangle area]);
        NSLog(@"\n\n");
        
        
        kpSquare *mySquare = [[kpSquare alloc]init];
        [mySquare setSide: 5];
        NSLog(@"Square s = %i", [mySquare side]);
        NSLog(@"Area = %d, Perimeter = %d", [mySquare area], [mySquare perimeter]);
        NSLog(@"\n\n");
        
        
        kpRectangle *myRect = [[kpRectangle alloc]init];
        kpXYZpoints *myPoint = [[kpXYZpoints alloc]init];
        
        [myPoint setX: 100 andY:200];
        [myRect setWidth: 5 andHeight: 8];
        myRect.origin = myPoint;
        
        //NSLog(@"Rectangle w = %i, h = %i", myRect.width, myRect.height);
        NSLog(@"Origin at (%i, %i)", myRect.origin.x, myRect.origin.y);
        
        //NSLog(@"Area = %i, Perimeter = %i",[myRect area], [myRect perimeter]);
         [myPoint setX: 50 andY:50];
        NSLog(@"Origin at (%i, %i)", myRect.origin.x, myRect.origin.y);
    }
    return 0;
}
