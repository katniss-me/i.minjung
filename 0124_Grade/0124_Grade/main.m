//
//  main.m
//  0124_Grade
//
//  Created by katniss on 2017. 1. 24..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Grade.h"

int main(int argc, const char * argv[]) {
  
    //점수를 받아서 해당 점수의 등급을 반환!!
    //민석:100점
    NSString *first = [Grade matchingGrade:100];
    NSLog(@"민석이는 %@점입니다.",first);
    
    
    
    //민정:90점
    NSString *second = [Grade matchingGrade:90];
    NSLog(@"민정이는 %@점입니다.",second);
    
    
    
    
    return 0;
}
