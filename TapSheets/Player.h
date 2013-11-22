//
//  Player.h
//  TapSheets
//
//  Created by Sutton, Joel D on 11/22/13.
//  Copyright (c) 2013 Sutton, Joel D. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject{
    NSString *name;
    int currentLevel;
    NSArray *scores;
}

@property NSString *name;
@property int currentlevel;
@property NSArray *scores;

@end
