//
//  Player.m
//  TwoPlayerMath
//
//  Created by Rushan on 2017-05-08.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import "Player.h"

@implementation Player


-(instancetype)initWithName:(NSString *)name{
    if (self = [super init]) {
        _name = name;
        _lives = 3;
        
    }
    return self;
}




@end
