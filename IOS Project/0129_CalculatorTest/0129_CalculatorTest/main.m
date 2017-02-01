//
//  main.m
//  0129_CalculatorTest
//
//  Created by katniss on 2017. 1. 29..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "calculatorBook.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
  
        CalculatorBook *calculator =[[CalculatorBook alloc] init];
        
        [calculator setAccumulator:100.0];
        [calculator add:200];
        [calculator divide:15];
        [calculator subtract:10.0];
        [calculator multiply:5];
        
        NSLog(@"The result is %g", [calculator accumulator]);
        
        
        
        
        
    }
    return 0;
}
