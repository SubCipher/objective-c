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
        
//
//        NSLog(@"rectangle perimeter = %f",[myRectangle perimeter]);
//        NSLog(@"rectangle area = %f",[myRectangle area]);
//        NSLog(@"\n\n");
//        
//        
//        kpSquare *mySquare = [[kpSquare alloc]init];
//        [mySquare setSide: 5];
//        NSLog(@"Square s = %f", mySquare.side);
//        NSLog(@"Area = %f, Perimeter = %f", [mySquare area], [mySquare perimeter]);
//        NSLog(@"\n\n");
//        
//        
        kpRectangle *myRect = [[kpRectangle alloc]init];
        kpXYZpoints *myPoint = [[kpXYZpoints alloc]init];
        
        
        [myPoint setX: 200 andY:420];
        [myRect setWidth: 250 andHeight: 175];
        myRect.origin = myPoint;
        [myRect translate: myPoint];
         myRect.origin = myPoint;
        [myRect intersect: myRect];
        
//        NSLog(@"Rectangle w = %f, h = %f", myRect.width, myRect.height);
//        NSLog(@"Origin at (%f, %f)", myRect.origin.x, myRect.origin.y);
//        
//        NSLog(@"Area = %f, Perimeter = %f",[myRect area], [myRect perimeter]);
//        [myPoint setX: 150 andY:150];
//       
//        
//        NSLog(@"Origin at (%f, %f)", myRect.origin.x, myRect.origin.y);
        
        NSLog(@"intersec results: %@", [myRect intersect: myRect]);
        
        
    }
    return 0;
}
