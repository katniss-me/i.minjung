//
//  main.m
//  0130_Triangular
//
//  Created by katniss on 2017. 1. 30..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool
{
       //여덟번째 삼각수를 계산하는 프로그램
        int triangularNumber;
        triangularNumber = 1+2+3+4+5+6+7+8;
        NSLog(@"The eighth triangular number is %i", triangularNumber);
        

        //200번째 삼각수를 계산하는 프로그램
        int n, triangularNumber2;
        triangularNumber2 =0;
        
        for (n =1; n <= 200; n = n+1)
            triangularNumber2 += n;
        
        NSLog(@"The 200th triangular number is %i", triangularNumber2);
     
        //삼각수 표를 생성하는 프로그램
        int m, triangularNumber3;
        NSLog(@"Table of triangular numbers");
        NSLog(@"m Sum from 1 to m");
        NSLog(@"--       --");
        
        triangularNumber3 = 0;
        
        for ( m=1; m <=10; ++m) {
            triangularNumber3 += m;
            NSLog(@"%2i       %i", m, triangularNumber3);
        }
    
        //사용자에게 어떤 삼각수를 계산할 지 물어보고 , 삼각수를 계산하고 결과를 표시한다.
        int b, number, triangularNumber4;
            NSLog(@"what triangular4 number do you want?");
            scanf("%i" , &number);
            
            triangularNumber4 = 0;
            
            for (b=1; b<= 100; ++b)
                triangularNumber4 +=b;
            NSLog(@"triangular4 number %i is %i/b", number, triangularNumber4);
            
    
        //예제 5.6 while 문을 소개하는 프로그램
        //1에서 5까지 센다.
            int count =1;
            while (count<= 5) {
                NSLog(@"%i" , count);
                ++count;
            }
    
        //두개의 양의 정수 u와 v의 최대공약수를 찾는 프로그램
                unsigned int u, v, temp;
                
                NSLog(@"please type in two nonnegative integers.");
                scanf("%u%u" , &u, &v);
                
                while (v !=0) {
                    temp = u % v;
                    u = v;
                    v = temp;
                
            NSLog(@"their greatest common divisor is %u" , u);
            
        }
        
        
    }
    
    return 0;
        
}
