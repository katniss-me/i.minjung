//
//  main.m
//  0201_MultiplicationTable
//
//  Created by katniss on 2017. 2. 1..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Multiplication.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //while과 for문을 이용한 구구단 구하기
        //while문 호출
        [Multiplication gugudan:3];
    
        //for문
        [Multiplication gugu:4];
        
        
        // factorial 구하기
        //while문
        [Multiplication getFactorialNum:4];
        
        //for문
        [Multiplication getFacNum:4];
        
        //triangular구하기
        //while문
        [Multiplication getTriangularNum:10];

//        for문
        [Multiplication getTri:10];
        
        
    }
    return 0;
}
