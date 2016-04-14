//
//  CardGameVC.m
//  CardMatching
//
//  Created by knax on 4/13/16.
//  Copyright © 2016 knax. All rights reserved.
//

#import "CardGameVC.h"
#import "Deck.h"
#import "PlayingCardDeck.h"

@interface CardGameVC ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (nonatomic, strong)Deck *deck;


@end

@implementation CardGameVC

-(Deck *)deck
{
    if(!_deck) _deck = [self createDeck];
    return _deck;
}

-(Deck *)createDeck

{
    return [[PlayingCardDeck alloc] init];
}


-(void)setFlipCount:(int)flipCount{
    
    _flipCount = flipCount;
    
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips:%d",self.flipCount];
    NSLog(@"flipCount = %d", self.flipCount);
    
}



- (IBAction)touchCardButton:(UIButton *)sender {
    
    if([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"subzeroCardBack"]
                      forState:UIControlStateNormal];
    [sender setTitle:@""forState:UIControlStateNormal];
    }
    
        else{
            Card *card = [self.deck drawRandomCard];
            [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                              forState:UIControlStateNormal];
            [sender setTitle:card.contents forState:UIControlStateNormal];
        
        }
    self.flipCount++;
}



@end
