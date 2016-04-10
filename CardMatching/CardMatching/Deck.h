//
//  Deck.h
//  CardMatching
//
//  Created by knax on 4/9/16.
//  Copyright © 2016 knax. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

-(void)addCard:(Card *)card atTop:(BOOL)atTop;
-(void)addCard:(Card *)card;


-(Card *)drawRandomCard;


@end
