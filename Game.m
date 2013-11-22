//
//  Game.m
//  TapSheets
//
//  Created by Sutton, Joel D on 11/22/13.
//  Copyright (c) 2013 Sutton, Joel D. All rights reserved.
//

#import "Game.h"

@implementation Game

@synthesize numberCorrect;
@synthesize numberCorrect_in_Level;
@synthesize levelSize;
@synthesize level;
@synthesize mode;
@synthesize passed;

//the question and answer options


//array to hold questions and string to hold the answer
@synthesize questions = questions_;
//string variables for the question and answer options
@synthesize theQuestion = theQuestion_;
@synthesize optionA = optionA_;
@synthesize optionB = optionB_;
@synthesize optionC = optionC_;
@synthesize optionD = optionD_;
@synthesize answer = answer_;
@synthesize nextQuestion = nextQuestion_;

-(id)initWithLevel:(int)theLevel inMode:(int)theMode{
    level = theLevel;
    mode = theMode;
    passed = FALSE;
    
    //get the questions and answers from the property list
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Questions" ofType:@"plist"];
    self.questions = [[NSArray alloc] initWithContentsOfFile:path];
    NSLog(@"PATH:%@", self.questions);
    
    //display the questions and answers
    currentQuestion = -1;
    //get the question
    [self getNextQuestion];
   
    NSLog(@"array: %@", self.questions);
    return self;
}

//show the next question
-(void)getNextQuestion{
    currentQuestion++;
    
    if (currentQuestion < self.questions.count) {
        //show the question
        self.nextQuestion = [self.questions objectAtIndex:currentQuestion];
        self.theQuestion = [self.nextQuestion objectForKey:@"Question Title"];
        self.answer = [self.nextQuestion objectForKey:@"Question Answer"];
        self.optionA = [self.nextQuestion objectForKey:@"A"];
        self.optionB = [self.nextQuestion objectForKey:@"B"];
        self.optionC = [self.nextQuestion objectForKey:@"C"];
        self.optionD = [self.nextQuestion objectForKey:@"D"];
    }
    else{
        //next level or game over
    }
    
    
    
}
//increment the total number of correct answers
-(void)incrementNumberCorrect{
    numberCorrect+=1;
}

//increment number of questions correct for current level
-(void)incrementNumberCorrect_in_Level{
    numberCorrect_in_Level+=1;
}


//reset this value when a new level starts
-(void)resetNumberCorrect_int_Level{
    numberCorrect_in_Level = 0;
}




@end
