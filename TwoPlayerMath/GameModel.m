//
//  GameModel.m
//  TwoPlayerMath
//
//  Created by Rushan on 2017-05-08.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import "GameModel.h"

@implementation GameModel

-(instancetype)init{
    if(self = [super init]){
        _p1 = [[Player alloc] initWithName:@"Player 1"];
        _p2 = [[Player alloc] initWithName:@"Player 2"];
        
        _currentPlayer = _p1;
    }
    return self;
}


-(NSString *)outputQuestion{
    int num1 = arc4random_uniform(20)+1;
    int num2 = arc4random_uniform(20)+1;
    
    NSString *question = [NSString stringWithFormat:@"%@: %i + %i?", self.currentPlayer.name, num1, num2];
    self.answer = num1 + num2;
    return question;
}

-(NSString *)outputScore{
    NSString *score = [NSString stringWithFormat:@"%@ Score: %i", self.currentPlayer.name, self.currentPlayer.score];
    return score;
}

-(void)outputAnswer:(int)inputAnswer{
    if(self.answer == inputAnswer){
        self.currentPlayer.score += 1;
    }else{
        self.currentPlayer.lives --;
    }
}



@end