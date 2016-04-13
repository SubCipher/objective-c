//
//  PlayingCard.h
//  CardMatching
//
//  Created by knax on 4/12/16.
//  Copyright © 2016 knax. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+(NSArray *)validSuits;
+(NSUInteger)maxRank;
             

@end
