//
//  Book.m
//  0129_BookTest
//
//  Created by katniss on 2017. 1. 29..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "Book.h"

@implementation Book

//분수를 다루는 프로그램 연습
{
    int numerator;
    int denominator;
}
-(void)print
{
    NSLog(@"%i/%i", numerator, denominator);
    
}
-(void)setNumerator:(int)n
{
    numerator = n;
    
}
-(void) setDenominator:(int)d
{
    denominator = d;
    
    
    //인스턴스 변수에 접근하는 프로그램
}
- (int) numerator
{
    return numerator;
}
-(int) denominator
{
    return denominator;
    
}

@end
