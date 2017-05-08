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
- (IBAction)enterButton:(id)sender {
    
}




@end
