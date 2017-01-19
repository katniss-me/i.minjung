//
//  Teacher.h
//  Fast4f
//
//  Created by katniss on 2017. 1. 19..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObjectiveClass.h"
#import "Cup.h"

@interface Teacher : ObjectiveClass

@property (readonly) NSInteger teacherNo;
@property NSString * teacherName;
@property NSInteger power;
@property NSInteger work;

- (id) talk;
- (id) teach;
- (void) drink:(Cup *)starbucks;




//- (id) study;
//- (void)talkTo:(ObjectiveClass *)who;

@end
