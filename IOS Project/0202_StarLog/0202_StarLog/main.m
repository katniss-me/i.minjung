//
//  main.m
//  0202_StarLog
//
//  Created by katniss on 2017. 2. 2..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Star.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSLog(@"*");
        NSLog(@"**");
        NSLog(@"***");
        
        NSLog(@"***");
        NSLog(@"**");
        NSLog(@"*");
        
        printf("?");
        printf("?");
        printf("?");
    
        [Star star:10];
        [Star getNum:10];
        
        
        
    }
    return 0;
}
