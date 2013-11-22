//
//  PlayViewController.m
//  TapSheets
//
//  Created by Sutton, Joel D on 11/15/13.
//  Copyright (c) 2013 Sutton, Joel D. All rights reserved.
//

#import "PlayViewController.h"

@interface PlayViewController ()
@property (weak, nonatomic) IBOutlet UIButton *buttonBack;

@end

@implementation PlayViewController
//the game
@synthesize game;
//labels
@synthesize lblQuestionTitle;
@synthesize lblAnswerA;
@synthesize lblAnswerB;
@synthesize lblAnswerC;
@synthesize lblAnswerD;
@synthesize btnA;
@synthesize btnB;
@synthesize btnC;
@synthesize btnD;
//buttons



//answer button connections


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    game = [[Game alloc]initWithLevel:0 inMode:0];
    self.lblQuestionTitle.text = game.theQuestion;
    self.lblAnswerA.text = game.optionA;
    self.lblAnswerB.text = game.optionB;
    self.lblAnswerC.text = game.optionC;
    self.lblAnswerD.text = game.optionA;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonTapA:(id)sender {
    if ([game.answer isEqualToString:game.optionA]) {
        [game incrementNumberCorrect];
        [self displayQuestion];
    }
}
- (IBAction)buttonTapB:(id)sender {
    if ([game.answer isEqualToString:game.optionB]) {
        [game incrementNumberCorrect];
        [self displayQuestion];
    }
}

- (IBAction)buttonTapC:(id)sender {
    if ([game.answer isEqualToString:game.optionC]) {
        [game incrementNumberCorrect];
        [self displayQuestion];
    }
}

- (IBAction)buttonTapD:(id)sender {
    if ([game.answer isEqualToString:game.optionD]) {
        [game incrementNumberCorrect];
        [self displayQuestion];
    }
}

-(void)displayQuestion{
    //load next question from game and display
    [game getNextQuestion];
    self.lblQuestionTitle.text = game.theQuestion;
    self.lblAnswerA.text = game.optionA;
    self.lblAnswerB.text = game.optionB;
    self.lblAnswerC.text = game.optionC;
    self.lblAnswerD.text = game.optionD;
}
@end
