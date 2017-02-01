//
//  main.m
//  0131_Self Check Test
//
//  Created by katniss on 2017. 1. 31..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Katniss.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Katniss *me = [[Katniss alloc] init];
        me .birthDay = 19860303;
        me .job = @"Wizard";
        me .address = @"sungnam";
        me .age = 32;
        me .name = @"minjung";
       
        
        
    //[me setYourJob:@"a"];
        
        [me setName:@"minju"];
        NSLog(@"minjung의 이름을 %@라고 짓는다.", me.name);
        
        [me settingJob:@"developer"];
        NSLog(@"minjung을 %@로 job을 setting한다.",me.job);
        
        
    //오늘 생일 확인 메소드 호출해보기
        BOOL yesOrNo = [me isYourBirthDay];  // YES / NO
        
        if (yesOrNo) {
            NSLog(@"생일이 맞습니다.");
        }
        else{
            NSLog(@"생일이 아닙니다.");
        }
    
        
    //장학금 호출하기
        [me scholarshipWithGrade:1]; //case가 2일때
        
    //1월의 마지막 날 호출
        [me lastDayOfMoon:1]; //1월 일때
        
        
    }
    return 0;
}
