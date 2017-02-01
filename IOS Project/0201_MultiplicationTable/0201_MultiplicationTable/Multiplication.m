//
//  Multiplication.m
//  0201_MultiplicationTable
//
//  Created by katniss on 2017. 2. 1..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "Multiplication.h"

@implementation Multiplication

//구구단 구하기
//while문
+(void)gugudan:(NSInteger)dan
{
    NSInteger count=1;
    while (count<10) {
       NSLog(@"%ld x %ld = %ld",dan,count,count*dan);
       count++;
    }
    
}
//for문
+(void)gugu:(NSInteger)dan2
{
    for (NSInteger count=1;count<10;count++){
        NSLog(@"%ld x %ld = %ld",dan2,count,count*dan2);
    }
    
}

//factorial 구하기
//while문
+(void)getFactorialNum:(NSInteger)num
{
    NSInteger i=1;
    NSInteger result=1;
    while (i<=num)
    {
        result = result*i;
//    NSLog(@"%ld",result);
        i=i+1;
    }
    NSLog(@"%ld",result);
}


//for문
+(void)getFacNum:(NSInteger)num
{
    NSInteger result=1;
  
    for (NSInteger i=1; i<=num; i++){
//        NSLog(@"%ld",result);
          result=result*i;
    }
    NSLog(@"%ld",result);
}



//triangular 구하기
//while문
//[self factorial:3]>>1+2+3+4+5
+(void)getTriangularNum:(NSInteger)fn
{
    NSInteger i=1;
    NSInteger result=0;
    while (i<=fn)
    {
        result = result+i;
//        NSLog(@"%ld",i);
        i=i+1;
        //i += 1
        //i++
        
    }
    NSLog(@"%ld",result);
}


//for문
+(void)getTri:(NSInteger)gf
{
    NSInteger result =0;
    for (NSInteger i=1; i<=gf; i++){
    
        result=result+i;

    }
    NSLog(@"%ld",result);
    
}


@end
