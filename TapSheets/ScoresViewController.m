//
//  ScoresViewController.m
//  TapSheets
//
//  Created by Sutton, Joel D on 11/15/13.
//  Copyright (c) 2013 Sutton, Joel D. All rights reserved.
//

#import "ScoresViewController.h"

@interface ScoresViewController ()
@property (weak, nonatomic) IBOutlet UIButton *buttonBack;

@end

@implementation ScoresViewController

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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
