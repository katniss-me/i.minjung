//
//  main.m
//  ClassCarlculator
//
//  Created by katniss on 2017. 1. 23..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassCarculator.h"



int main(int argc, const char * argv[]) {

    //계산기 객체생성/세팅하기
    ClassCarculator *carculator = [[ClassCarculator alloc] init];

    
    NSLog(@"두 과목의 평균은 %.2f", [carculator averageTwo:@"영어" score:100 subject2:@"국어" score:50]);
    

    return 0;
}
