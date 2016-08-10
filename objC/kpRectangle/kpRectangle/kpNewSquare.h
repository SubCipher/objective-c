//
//  kpNewSquare.h
//  kpRectangle
//
//  Created by MacMan on 8/8/16.
//  Copyright © 2016 StepwiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface kpNewSquare : NSObject

-(instancetype) initWithSide: (int) s;
-(void) setSide: (int) s;
-(int) side;
-(int) area;
-(int) perimeter;
@end

