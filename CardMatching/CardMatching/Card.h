//
//  Card.h
//  CardMatching
//
//  Created by knax on 4/9/16.
//  Copyright © 2016 knax. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong,nonatomic) NSString *contents;


@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

-(int)match:(NSArray *)otherCards;

@end
