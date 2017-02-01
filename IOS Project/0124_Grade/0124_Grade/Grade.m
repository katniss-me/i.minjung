//
//  Grade.m
//  0124_Grade
//
//  Created by katniss on 2017. 1. 24..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "Grade.h"

@implementation Grade

//시험 점수를 받아서 해당 점수 등급을 반환하는 메소드
//A+,A,B+,B,C+,C...
//95~100:A+ 90~95:A 85~90:B+

+ (NSString *)matchingGrade:(NSInteger)average
{
    NSString *gradeNum;
    //100보다 작거나 같거나, 95보다 크거나 같으면 최상급이다.
    if (average<=100 && average>=95)
    {
        gradeNum = @"최상";
    //90보다 작거나 같고, 85보다 크거나 같으면 상급이다.
    }else if(average<=90 && average>=85)
    {
        gradeNum = @"상";

    }
    
    return gradeNum;

    
}

@end

