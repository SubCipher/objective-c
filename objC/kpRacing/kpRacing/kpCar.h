//
//  kpCar.h
//  kpRacing
//
//  Created by MacMan on 7/17/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface kpCar : NSObject

@property (readonly) NSArray * lapTimes;


/*returns time it took a car to complete a race and this is a multi line 
 comment about it
*/

-(id)initWithTopSpeed:(int)speed;

 -(int) totalRaceTime;

 


@end
