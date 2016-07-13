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


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        kpRectangle *myRectangle =[[kpRectangle alloc]init];
        [myRectangle setWidth:5 andHeight: 8];
        
        kpRectangle *myRect00 = [[kpRectangle alloc]init];
        kpRectangle *myRect01 = [[kpRectangle alloc]init];
        
        kpXYZpoints *myPoint00 = [[kpXYZpoints alloc]init];
        kpXYZpoints *myPoint01 = [[kpXYZpoints alloc]init];
        
        [myPoint00 setX: 200 andY: 420];
        [myPoint01 setX: 400 andY:300];
        
        [myRect00 setWidth: 25 andHeight: 17];
        [myRect01 setWidth: 10 andHeight: 18];
        
        [myRect00 setOrigin: myPoint00];
        [myRect01 setOrigin: myPoint01];
        
        
        kpRectangle *interSAngle;
        interSAngle = [myRect00 intersect: myRect01];

        NSLog(@"intersec results: w %.2f h %.2f orgi(%.2f,%.2f)",interSAngle.width,interSAngle.height,interSAngle.origin.x,interSAngle.origin.y);
         NSLog(@"\n\n");
        [interSAngle draw: myRect00];
        NSLog(@"\n\n");
        char *result = [kpSquare class] == [kpSquare class] ? "YES" : "NO";
            NSLog(@"are the classes the same? %s", result);
        
        kpSquare *mySquare = [[kpSquare alloc] init];
        
        //isMemberOf:
        if( [mySquare isMemberOfClass: [kpSquare class]] == YES )
            NSLog (@"mySquare is a member of Square calss");
        
        if( [mySquare isMemberOfClass: [kpRectangle class]] == YES )
         NSLog (@"mySquare is a member of Rectangle calss");
        
        if( [mySquare isMemberOfClass: [NSObject class]] == YES )
             NSLog (@"mySquare is a member of NSObject calss");
        
        //isKindOf
        
        if( [mySquare isKindOfClass: [kpSquare class ]] == YES )
            NSLog (@"mySquare is kind of Square");
        
        if( [mySquare isKindOfClass: [kpRectangle class ]] == YES )
            NSLog (@"mySquare is kind of Rectangle");

        if( [mySquare isKindOfClass: [NSObject class ]] == YES )
            NSLog (@"mySquare is kind of NSObject");

        
        //respondsTo
        
        if( [mySquare respondsToSelector: @selector (setSide:)] == YES )
            NSLog (@"mySquare responds to setSide: method");

        
        if( [mySquare respondsToSelector: @selector (setWidth:andHeight:)] == YES )
            NSLog (@"mySquare responds to setWidth:andHeight");
        
        
        if( [mySquare respondsToSelector: @selector (alloc)] == YES )
            NSLog (@"mySquare responds to alloc method");
        
                
        
        
    }
    return 0;
}
