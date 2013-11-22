//
//  PlayViewController.h
//  TapSheets
//
//  Created by Sutton, Joel D on 11/15/13.
//  Copyright (c) 2013 Sutton, Joel D. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Game.h"
//view contriller
@interface PlayViewController : UIViewController{
    Game *game;
}

//game
@property(strong,nonatomic,readwrite)Game* game;
//labels
@property (weak, nonatomic) IBOutlet UILabel *lblQuestionTitle;
@property (weak, nonatomic) IBOutlet UILabel *lblAnswerA;
@property (weak, nonatomic) IBOutlet UILabel *lblAnswerB;
@property (weak, nonatomic) IBOutlet UILabel *lblAnswerC;
@property (weak, nonatomic) IBOutlet UILabel *lblAnswerD;
//buttons
@property (weak, nonatomic) IBOutlet UIButton *btnA;
@property (weak, nonatomic) IBOutlet UIButton *btnB;
@property (weak, nonatomic) IBOutlet UIButton *btnC;
@property (weak, nonatomic) IBOutlet UIButton *btnD;


- (IBAction)buttonTapA:(id)sender;
- (IBAction)buttonTapB:(id)sender;
- (IBAction)buttonTapC:(id)sender;
- (IBAction)buttonTapD:(id)sender;


@end
