//
//  CalculatorBook.m
//  0129_CalculatorTest
//
//  Created by katniss on 2017. 1. 29..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "CalculatorBook.h"

@implementation CalculatorBook


{
    double accumulator;
}
- (void) setAccumulator:(double)value
{
    accumulator = value;
}
- (void) clear
{
    accumulator = 0;
}

- (double) accumulator
{
    return accumulator;
}
- (void) add : (double) value
{
    accumulator += value;
}
- (void) subtract:(double)value
{
    accumulator -= value;
}
- (void) multiply:(double)value
{
    accumulator *= value;
    
}
- (void) divide : (double) value
{
    accumulator /= value;
    
}




@end
