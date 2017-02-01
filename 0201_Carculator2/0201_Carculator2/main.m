//
//  main.m
//  0201_Carculator2
//
//  Created by katniss on 2017. 2. 1..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Carculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
   
        //문제1 절대값 구하기 : 모든 수가 양수로 나오기
        Carculator *me = [[Carculator alloc] init];
        NSInteger num;
        num = [me absoluteNum:124];
        NSLog(@"%lu",num);
        
        
        //횟수를 나타내는 변수 : 구구단
        [me getMultipleicationTable:3];
        
        
        //while문 문제 : 배수 찾기
        [Carculator findMultipleNum:3 maxRange:10];

        
        //for문 문제 : 구구단 다시 해보기
        [Carculator gogodan:7];
        
        
        //for문 문제2 : 팩토리얼 문제 풀기
        [Carculator factorialSolution:4];
        
        
    }
    return 0;
}
