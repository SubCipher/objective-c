//
//  main.m
//  kpRectangle
//
//  Created by knax on 6/21/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "kpRectangle.h"


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
        
        [myRect00 setWidth: 250 andHeight: 175];
        [myRect01 setWidth: 100 andHeight: 180];
        
        [myRect00 setOrigin: myPoint00];
        [myRect01 setOrigin: myPoint01];
        
        
        kpRectangle *inter;
        inter = [myRect00 intersect: myRect01];

        NSLog(@"intersec results: w %.2f h %.2f orgi(%.2f,%.2f)",inter.width,inter.height,inter.origin.x,inter.origin.y);
        
        
    }
    return 0;
}
