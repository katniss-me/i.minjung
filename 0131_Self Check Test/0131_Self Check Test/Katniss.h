//
//  Self.h
//  0131_Self Check Test
//
//  Created by katniss on 2017. 1. 31..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Katniss : NSObject

@property NSString *name;
@property NSString *address;
@property NSInteger birthDay;
@property NSUInteger age;
@property NSString *job;

-(NSString *)name;

- (void) setName:(NSString *)name;
- (BOOL) isYourBirthDay;
- (void) settingJob:(NSString *)job;

//등급에 따라서 장학금 주기
- (NSInteger)scholarshipWithGrade:(NSUInteger)gradeNum;

//whitch문을 통해 월의 마지막날 구하기
- (NSInteger)lastDayOfMoon:(NSInteger)month;



@end
