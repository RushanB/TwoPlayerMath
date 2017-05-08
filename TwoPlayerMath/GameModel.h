//
//  GameModel.h
//  TwoPlayerMath
//
//  Created by Rushan on 2017-05-08.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface GameModel : NSObject

@property (nonatomic) Player *p1;
@property (nonatomic) Player *p2;
@property (nonatomic) Player *currentPlayer;

@property (nonatomic) NSMutableString *input;
@property (nonatomic, assign) int answer;

-(NSString *)outputQuestion;
-(NSString *)outputScore;
-(void)outputAnswer:(int)inputAnswer;

@end
