//
//  CalculatorBook.h
//  0129_CalculatorTest
//
//  Created by katniss on 2017. 1. 29..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBook : NSObject

//누산기 메서드
- (void) setAccumulator :(double)value;
- (void) clear;
- (double) accumulator;

//산술연산 메서드
- (void) add : (double) value;
- (void) subtract : (double) value;
- (void) multiply : (double) value;
- (void) divide : (double) value;

//void이므로 반환값은 없어도 됨.

@end
