//
//  Self.m
//  0131_Self Check Test
//
//  Created by katniss on 2017. 1. 31..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "Katniss.h"

@implementation Katniss

//생일 확인 메소드
-(BOOL)isYourBirthDay
{
    NSInteger today = 19860303;
//    NSArray *tempList = [self.birthDay componentsSeparatedByString:@"/"];
//    
//    NSUInteger month = [[tempList objectAtIndex:1] integerValue];
//    NSUInteger day = [[tempList objectAtIndex:2] integerValue];
//    
//    
//    NSUInteger myDay = [[tempList objectAtIndex:1] integerValue];
//    NSUInteger myMonth = [[tempList objectAtIndex:2] integerValue];
    

    //if (조건){
    //else if(조건2){
    //else{
    //조건이 모두 만족되지 않을때 실행
    
//    if (month == myMonth && day == myDay){
//        return YES;
//    } else
//    {
//        return NO;
//    }
    
    if (self.birthDay == today) {
        
        return YES;
    } else {
        return NO;
    }
    
}
-(void) settingJob:(NSString*)job{
    self.job = job;
     
}

//등급에 따라서 장학금 주기
//switch는 타입을 구분지을때 씀
//범위지정 안됨. swift에서는 됨.
- (NSInteger)scholarshipWithGrade:(NSUInteger)gradeNum
{
    switch (gradeNum) {
        case 1:
            NSLog(@"전액 장학금");
            return 100;
            break;
            //break는 해당 구문을 나가라는 구문. break없으면 그냥 내려가기 때문에 원하는 case를 계속 만들 수 있다.
        case 2:
            NSLog(@"반액 장학금");
            return 50;
            break;
        case 3:
            NSLog(@"30%% 장학금"); //%퍼센트를 찍고 싶으면 %%를 써라.
            return 30;
            break;
        case 4:
            NSLog(@"10%% 장학금");
            
            
        default: //정해놓은 항목들이 아닐때, 나가는 문. 특정한 값을
             return 0;
         
              }

            
}
//whitch문을 통해 월의 마지막날 구하기
- (NSInteger)lastDayOfMoon:(NSInteger)month
{
    switch (month){
        case 2:
            NSLog(@"28일");
            return 28;
            break;
        case 4:
        case 6:
        case 9:
        case 11:
            NSLog(@"30일");
            return 30;
            break;
        default:         //default일때,그 외 모든 달을 31일로 리턴함.
            NSLog(@"31일");
            return 31;
            
    }
    
}









@end
