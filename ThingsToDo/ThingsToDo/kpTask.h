//
//  kpTask.h
//  ThingsToDo
//
//  Created by knax on 2/18/16.
//  Copyright © 2016 knax. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface kpTask : NSObject

@property (nonatomic, strong)NSString *name;
@property (nonatomic, assign)BOOL done;

-(id) initWithName:(NSString *)name done:(BOOL)done;

@end
