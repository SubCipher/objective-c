//
//  kpSquare.m
//  kpRectangle
//
//  Created by knax on 7/2/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import "kpSquare.h"
@implementation kpSquare: kpRectangle

-(id) initWithSide: (int) side{
   self = [super init];
     if(self) {
         
     }
    return self;
    }


-(void) setSide: (float) s{
    
    [self setWidth: s andHeight: s];
}

-(float) side{
    
    return self.width;
}

@end;
