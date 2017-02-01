//
//  CheckDeveloper.m
//  0131_Self Check Test
//
//  Created by katniss on 2017. 1. 31..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "CheckDeveloper.h"

@implementation CheckDeveloper

//class메소드 만들고,developer인지 확인하기

+ (BOOL)checkDeveloper:(Katniss*)p1
{
    if ([p1.job isEqualToString:@"developer"]) {
        return YES;
    }else{
        return NO;
    }
    
}

@end
