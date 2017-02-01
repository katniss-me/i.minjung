//
//  Book.h
//  0129_BookTest
//
//  Created by katniss on 2017. 1. 29..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject

//예제 3.2 : 분수를 다루는 프로그램 연습
-(void) print;
-(void)setNumerator:(int)n;
-(void)setDenominator:(int)d;

//인스턴스 변수에 접근하는 프로그램
-(int)numerator;
-(int)denominator;


@end
