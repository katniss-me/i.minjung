//
//  main.m
//  0129_BookTest
//
//  Created by katniss on 2017. 1. 29..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /* 프로그램 2.5
        the sum of 50 and 25 출력하기 */
        
        int value1, value2, sum;
        
        value1 = 50;
        value2 = 25;
        sum = value1+value2;
        NSLog(@"The sum of %i and %i is %i", value1, value2, sum);
        
        
//연습문제 2.5 출력결과 테스트
        
        int i;
        i = 1;
        NSLog(@"Testing...");
        NSLog(@"....%i", i);
        NSLog(@"...%i" , i+1);
        NSLog(@"..%i" , i+2);
        
        
//출력결과 테스트2
        
        int answer, result;
        
        answer = 100;
        result = answer - 10;
        NSLog(@"The result is %i\n", result+5);
    

//분수를 다루는 프로그램을 만들어보자.
        
        int numerator = 1;
        int denominator = 3;
        result = numerator + denominator +1;
        
        NSLog(@"The fraction is %i/%i" , numerator, denominator);
        
        //응용해서, +1을 해보았다.
        NSLog(@"분수 더하기 1을 해보면, result is %i이다.", result);
        
        
//프로그램 3.2 : 분수를 다루는 프로그램 , 예제를 해보자.
        //myBook이라는 변수를 정의한다.
        //myBook이  Book형의 객체라는 의미이다.
        //myBook이라는 메서드를 선언한다.
        Book *myBook;
        
        //book인스턴스를 생성한다.
        myBook = [Book alloc];
        
        //myBook이라는 변수에 초기화 메시지를 클래스의 인스턴스에게 보내는 것이다.
        //init 메서드는 초기화된 객체를 반환한다. 이 반환값을 Book 형의 변수인 myBook에 저장한다.
        myBook = [myBook init];
        
        
//1/3로 분수값을 설정한다.
        [myBook setNumerator:1];
        [myBook setDenominator:3];
        
        //print 메서드로 분수의 값을 표시한다.
        NSLog(@"The value of myBook is:");
        //print 메서드를 호출한다.
        [myBook print];


//2번째 예제
//프로그램 3.3 : 분수를 다루는 프로그램 2, 변수를 2개 만들어보자.
        Book *Book1 =[[Book alloc] init];
        Book *Book2 =[[Book alloc] init];
        
        [Book1 setNumerator:2];
        [Book1 setDenominator:9];
        
        [Book2 setNumerator:3];
        [Book2 setDenominator:8];
    
        
        //분수를 표시한다.
        NSLog(@"Book1 is.");
        [Book1 print];
        
        //두번째 분수를 표시한다.
        NSLog(@"Book2 is.");
        [Book2 print];
        
//인스턴스 변수에 접근하는 프로그램.
//분수를 표시한다.
        NSLog(@"The value of myBook is: %i/%i",
              [Book1 numerator], [Book2 denominator]);
        
//프로그램 4.1

        {
            int integerVar = 100;
            float floatingVar = 331.79;
            double doubleVar = 8.44e+11;
            char charVar = 'W';
            
            NSLog(@" integerVar = %i", integerVar);
            NSLog(@" floatingVar = %f", floatingVar);
            NSLog(@" doubleVar = %e", doubleVar);
            NSLog(@" charVar = %c", charVar);
    
//프로그램 4.2 덧셈, 뺄셈, 곱셈, 나눗셈을 해보자. 우선순위도 보자.
            
            int a = 2;
            int b = 3;
            int c = 5;
            int d = 4;
            float e = 6.66;
            
            
            int result;
            
            result = a + b;
            NSLog(@"a+b=%i", result);
            
            result = b - c;
            NSLog(@"b-c=%i", result);
            
            result = d * a;
            NSLog(@"d*a=%i", result);
            
            result = c / d / a;
            NSLog(@"c/d/a=%i", result);
            
            result = a * b + c;
            NSLog(@"a*b+c=%i", result);
            
            result = d * e / a ;
            NSLog(@"d*e/a=%i", result);
            
//나머지 연산자
            result = a+b%b*e;
            NSLog(@"a+b %% b*e = %i", result);
            
            
    
    }
    return 0;
}


}
