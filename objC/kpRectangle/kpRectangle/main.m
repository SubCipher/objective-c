//
//  main.m
//  kpRectangle
//
//  Created by knax on 6/21/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface kpRectangle: NSObject
-(void) setWidth: (int) w;
-(void) setHeight: (int) h;
-(int) width;
-(int) height;
-(int) area;
-(int) perimeter;

@end


@implementation kpRectangle{
    int width;
    int height;
    }
-(int)width{
    return width;
}

-(int)height{
    return height;
}
-(void)setWidth: (int) w{
    width = w;
}

-(void)setHeight: (int) h{
    height = h;
}

-(int)area {
    return (width * height);
}

-(int)perimeter{
    return (width+height)*2;
}


@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        kpRectangle *myRectangle =[[kpRectangle alloc]init];
        
        [myRectangle setWidth:5];
        [myRectangle setHeight: 8];
        NSLog(@"rectangle perimeter = %d",[myRectangle perimeter]);
        NSLog(@"rectangle area = %d",[myRectangle area]);
        
        
    }
    return 0;
}
