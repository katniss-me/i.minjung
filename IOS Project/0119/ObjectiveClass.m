//
//  ObjectiveClass.m
//  Fast4f
//
//  Created by katniss on 2017. 1. 19..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "ObjectiveClass.h"

@implementation ObjectiveClass

- (id) talk {
    NSLog(@"대화를 합니다.");
    return nil;
    
}

- (void)talkTo:(ObjectiveClass *)who
{
    NSLog(@"%@와 objective-c에 대한 대화를 합니다.",who.name);
  
}

- (id) study{
    NSLog(@"오브젝티브 클래스가 공부를합니다.");
    return nil;
}

- (void)talkto:(ObjectiveClass *)wood
{
    NSLog(@"%@와 대화를 해라.",wood.name);
    
}

- (void) make {
    NSLog(@"아무거나");
    
}

@end
