//
//  ClassCarculator.m
//  ClassCarlculator
//
//  Created by katniss on 2017. 1. 23..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "ClassCarculator.h"

@implementation ClassCarculator

//- (void)addSubject{
//    NSLog(@"과목의 점수를 더합니다.");
//
//}
//
//- (void)getTwoAverage{
//    NSLog(@"점수의 평균값을 구합니다.");
//    
//    
//}

- (CGFloat)averageTwo:(NSString *)subject score:(NSInteger)one subject2 :(NSString *)
subject2 score:(NSInteger)two{
    NSLog(@"%@ : %ld ,%@ : %ld", subject, one, subject2,two);
    return (one + two) / 2;
}




@end
