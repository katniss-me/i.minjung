//
//  Carculator.m
//  0201_Carculator2
//
//  Created by katniss on 2017. 2. 1..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "Carculator.h"

@implementation Carculator

//절대값 구하기 : 양수만 구하기

- (NSInteger)absoluteNum:(NSInteger)a1
{
    NSInteger resultNum;
    
    if (a1<0){
        resultNum = a1*(-1);
    }
    else
    {
        resultNum = a1;
    }
    return resultNum;
}

//소수점 3째 자리에서 반올림

- (void)round3Num:(CGFloat)num
{//num 1.111116
    CGFloat overNum = num + 0.005;
    //overNum >> 1.116116
    NSInteger cutNum = (NSInteger)(overNum * 100);
    //cutNum >>111
    CGFloat roundNum = ((CGFloat)cutNum)/100;
    //roundNum >>1.11
}


//횟수를 나타내는 변수 : 구구단 구현

- (void)getMultipleicationTable:(NSInteger)dan
{
    NSInteger count =1;
    while(count<10)
    {
        NSLog(@"%ld x %ld = %ld",dan,count,dan*count);
        count +=1;
    }
}

//for문을 이용한 구구단 구현
//for(NSInteger i = 0 ; i<10 ; i++)

+ (void)gogodan:(NSInteger)dan2
{
    for (NSInteger c=1; c<10; c++) {
        NSLog(@"%lu x %lu = %lu",dan2,c,dan2*c);
    }
}


//for문 문제2 : 팩토리얼 문제 풀기
// factorial은 반복문의 숫자를 돈다.
+ (void)factorialSolution:(NSInteger)f1
{
    NSInteger result = 1;
    for (NSInteger i=1; i<=f1; i++){
        NSLog(@"%lu",result);
        result=result*i;
    }
}
    
    
    
    

//while문 문제 1> 배수 찾기 (large와 배수를 받아 해당 large안에 있는 배수를 모두 골라 출력하시오.
//출력결과 [self findMultipleNum:3 maxLarge:10]; >>@"3 6 9"

+ (NSString*)findMultipleNum:(NSInteger)multiple maxRange:(NSInteger)range
{
    NSString *resultStr = @"start:";
    NSInteger index =0;
    while (index<range) {
        
        if (index%multiple==0) {
            NSString *findNumStr = [NSString stringWithFormat:@"%lu |",index];
            resultStr = [resultStr stringByAppendingString:findNumStr];
            
        }
        index +=1;
    }

return resultStr;
}







@end
