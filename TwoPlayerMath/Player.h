//
//  Player.h
//  TwoPlayerMath
//
//  Created by Rushan on 2017-05-08.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic, assign) int lives;
@property (nonatomic, assign) int score;

-(instancetype)initWithName:(NSString *)name;

@end
