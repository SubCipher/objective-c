//
//  kpSquare.m
//  kpRectangle
//
//  Created by knax on 7/2/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import "kpSquare.h"

@implementation kpSquare: kpRectangle
   
-(void) setSide: (int) s{
    
    [self setWidth: s andHeight: s];
}

-(int) side{
    
    return self.width;
}

@end;
