//
//  ObjectiveClass.h
//  Fast4f
//
//  Created by katniss on 2017. 1. 19..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ObjectiveClass : NSObject

@property NSString * name;
@property NSInteger age;



- (id) study;
- (void)talkTo:(ObjectiveClass *)who;
- (void)talkto:(ObjectiveClass *)wood;
- (void)talk;
- (void)make;



@end
