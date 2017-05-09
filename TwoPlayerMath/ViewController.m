//
//  ViewController.m
//  TwoPlayerMath
//
//  Created by Rushan on 2017-05-08.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import "ViewController.h"
#import "Player.h"
#import "GameModel.h"

@interface ViewController ()

@property (nonatomic) GameModel *gameModel;
@property (weak, nonatomic) IBOutlet UILabel *playerQuestion;
@property (weak, nonatomic) IBOutlet UILabel *p1Score;
@property (weak, nonatomic) IBOutlet UILabel *p2Score;

@property (weak, nonatomic) IBOutlet UITextField *answer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.gameModel = [[GameModel alloc] init];
    self.playerQuestion.text = [self.gameModel outputQuestion];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)enterPressed:(UIButton *)sender {
    //[self.gameModel outputAnswer:[self.answer.text intValue]];
    [self.answer setText:nil];
    if(self.gameModel.gameOver){
        self.playerQuestion.text = @"Game Over.";
    }
    if(self.gameModel.currentPlayer == self.gameModel.p1){ //p1 score
        self.p1Score.text = [self.gameModel outputScore];
        self.gameModel.currentPlayer = self.gameModel.p2;
        self.playerQuestion.text = [self.gameModel outputQuestion];
    }else{
        self.p2Score.text = [self.gameModel outputScore]; //p2 score
        self.gameModel.currentPlayer = self.gameModel.p1;
        self.playerQuestion.text = [self.gameModel outputQuestion];
    }
    
}

- (IBAction)numbersPressed:(UIButton *)sender {
    //NSLog(@"%i",sender.titleLabel.text.intValue);
    NSString *guess = [self.answer.text stringByAppendingString:[sender currentTitle]];
    [self.answer setText:guess];
    [self.gameModel outputAnswer:[guess intValue]];
    if(self.gameModel.gameOver){
      self.playerQuestion.text = @"Game Over.";
    }
}




@end
