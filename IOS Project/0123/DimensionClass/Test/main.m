//
//  main.m
//  Test
//
//  Created by katniss on 2017. 1. 23..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DimensionClass.h"
#import "ToolBox.h"



int main(int argc, const char * argv[]) {
 
 
//    DimensionClass *me=[[DimensionClass alloc] init];
//    NSLog(@"%.3f이다.", [me getSquareP:10]);

    //정사각형 넓이 구하기
    DimensionClass *na=[[DimensionClass alloc] init];
    NSLog(@"정사각형의 넓이는 %.3f이다.", [na getSquareA:4]);
    
    //정사각형 면적 구하기
    DimensionClass *A=[[DimensionClass alloc] init];
    NSLog(@"정사각형의 면적은 %.2f이다.", [A getSquareP:5]);
    
    //정육면체 넓이 구하기
    DimensionClass *A2=[[DimensionClass alloc] init];
    NSLog(@"정육면체의 넓이는 %.2f이다.", [A2 getRectanglularA2:10 sero:3]);
    
    //circle,triangle,sphere넓이 구하기 등등을 해야합니다.
    
    
    //각 치수 전환 class 메소드 만들기
    NSLog(@"2inch를 cm로 바꾸면 %.2f이다.", [ToolBox inchToCm:2]);
    
    //m2 평으로 바꾸기
    NSLog(@"m2를 평으로 바꾸면 %.3f이다.", [ToolBox m2ToP:1]);
    
    
    
    
    return 0;
}
