//
//  kpRectangle.m
//  kpRectangle
//
//  Created by knax on 7/2/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import "kpRectangle.h"
#import "kpXYZpoints.h"

@implementation kpRectangle{
    kpXYZpoints *origin;

    float width;
    float height;
   }

//@synthesize width, height;

-(id)initWithWidth: (int) w andHeight: (int) h{
    self = [super init];
    
    if(self){
        width = w;
        height = h;
        
    }return self;
}

-(void) setWidth: (float) w andHeight: (float) h{
    width = w;
    height = h;
}
-(float)perimeter{
    return (width + height)*2;
}

-(float)area {
    return (width * height);
}

-(float) width{
    return width;
}

-(float) height{
    return height;
}


-(void) setOrigin: (kpXYZpoints *) pt{
  
    if( !origin)
        origin = [[kpXYZpoints alloc]init];
  
    origin.x = pt.x;
    origin.y = pt.y;
    
}
-(void)translate: (kpXYZpoints *) vector {
    if( ! vector)
        vector = [[kpXYZpoints alloc]init];
    
    [vector setX: 6 andY: 44];
}

-(kpXYZpoints *) origin{
    return origin;
}

-(BOOL)containsPoint: (kpXYZpoints *) aPoint{
    return (aPoint.x == 235 || aPoint.y == 44);

}

-(void)draw: (kpRectangle *) drawThis {
    int i;
    for(i =0 ; i < drawThis.width; i++){
        printf("-");
    }
    
    for(i =0 ; i < drawThis.height; i++){
        printf("|                        |\n");
    }
    
    for(i =0 ; i < drawThis.width; i++){
        printf("-");
    }

}

-(kpRectangle *) intersect: (kpRectangle *) aRectangle{
    
    kpRectangle *intersectRect = [[kpRectangle alloc ]init];
    kpXYZpoints *origIntersectRect = [[kpXYZpoints alloc] init];
    
    
    float maxRight = (origin.x > aRectangle.origin.x ) ? origin.x : aRectangle.origin.x;
    float minRight = (( origin.x + width) < (aRectangle.origin.x + aRectangle.width)) ? (origin.x + width) :(aRectangle.origin.x + aRectangle.width);
    
    
    float maxTop = (origin.y > aRectangle.origin.y) ? origin.y :aRectangle.origin.y;
    float minTop = ( (origin.y + height) < (aRectangle.origin.y + aRectangle.height) ) ? (origin.y + height) : (aRectangle.origin.y + aRectangle.height);
    if(maxRight < minRight && maxTop < minTop ){
        

        [origIntersectRect setX: maxRight andY:maxTop];
        [intersectRect setOrigin: origIntersectRect];
        [intersectRect setWidth:(minRight-maxRight) andHeight: (minTop-maxTop)];
        
        return intersectRect;
        
    }
    else
    {
        [origIntersectRect setX:0 andY:0.];
        [intersectRect setOrigin: origIntersectRect];
        [intersectRect setWidth:0 andHeight: 0.];
        
        return intersectRect;
        
    }
    return aRectangle;
}

@end
