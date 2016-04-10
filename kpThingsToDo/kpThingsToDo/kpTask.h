//
//  kpTask.h
//  kpThingsToDo
//
//  Created by MacMan on 2/7/16.
//  Copyright © 2016 StepWiseDesigns. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface kpTask : NSObject
@property (nonatomic, strong)NSString *name;
@property (nonatomic, assign)BOOL done;

-(id)initWithName:(NSString *)name done: (BOOL)done;
@end
