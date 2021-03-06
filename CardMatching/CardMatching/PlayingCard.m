//
//  PlayingCard.m
//  CardMatching
//
//  Created by knax on 4/12/16.
//  Copyright © 2016 knax. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard



-(NSString *)contents{
    NSArray * rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}


@synthesize suit = _suit;

//class method (not instance)
+(NSArray *)validSuits{
    return @[@"♥️",@"♦️",@"♠️",@"♣️"];
    }



-(void)setSuit:(NSString *)suit{
    if ([[PlayingCard validSuits] containsObject:suit]){
        _suit = suit;
    }
    
}


-(NSString *)suit{
    return _suit ? _suit: @"?";
    }

+(NSArray *)rankStrings  {
return       @[@"?",
              @"A",
              @"1",
              @"2",
              @"3",
              @"4",
              @"5",
              @"6",
              @"7",
              @"8",
              @"9",
              @"10",
              @"J",
              @"Q",
              @"K"];
}


+(NSUInteger)maxRank {
    return [[self rankStrings] count]-1;
}



@end
















