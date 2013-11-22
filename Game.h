//
//  Game.h
//  TapSheets
//
//  Created by Sutton, Joel D on 11/22/13.
//  Copyright (c) 2013 Sutton, Joel D. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Game : NSObject{
    int numberCorrect;//number of questions correct for level
    int numberCorrect_in_Level;//number of questions correct for the current level
    int levelSize; //number of questions in a level
    int level;      //current level/progress through questions
    int mode;//0 = learning mode.  1 = testing mode
    int currentQuestion;//the number of the current question
    Boolean passed;//passed level or test
    NSArray *questions;
    NSString *theQuestion;
    NSString *optionA;
    NSString *optionB;
    NSString *optionC;
    NSString *optionD;
    NSString *answer;
    NSDictionary *nextQuestion;

}



@property int numberCorrect;
@property int numberCorrect_in_Level;
@property int level;//current level/progress through questions
@property int levelSize;//number of questions in a level
@property int mode;//0 = learning mode.  1 = testing mode
@property Boolean passed;//passed level or test

//questions and answers
//question and answer data structures
@property (retain, nonatomic) NSArray *questions;
//Strings for the question and answer options
@property (weak, nonatomic) NSString *theQuestion;
@property (weak, nonatomic) NSString *optionA;
@property (weak, nonatomic) NSString *optionB;
@property (weak, nonatomic) NSString *optionC;
@property (weak, nonatomic) NSString *optionD;
@property (weak, nonatomic) NSString *answer;
//the next question to display
@property (weak, nonatomic) NSDictionary *nextQuestion;
//methods
-(id)initWithLevel:(int)theLevel inMode:(int)theMode;
-(void)getNextQuestion;
-(void)incrementNumberCorrect;
-(void)incrementNumberCorrect_in_Level;
-(void)resetNumberCorrect_int_Level;
@end
