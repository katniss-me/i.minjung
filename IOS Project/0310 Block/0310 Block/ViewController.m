//
//  ViewController.m
//  0310 Block
//
//  Created by katniss on 2017. 3. 10..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end



@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    void(^greeting)(void)=^{
        NSLog(@"hello world");
        
    };
    greeting();
    
    int (^sum) (int,int) = ^(int i, int j){
        return i+j;
        
    };
    int result = sum(1,2);
    NSLog(@"1+2=%d",result);
    
    NSArray *array = @[@"a",@"b",@"c",@"d",@"e"];
    [array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //stop은 순회를 멈추는 것.
        NSLog(@"배열순회하기 원소:%@ - 인덱스:%ld",obj,idx);
        if (idx >= 2) {
            *stop = YES;
        }
      
    }];
    
    
}







- (void)testMethod{
    __block NSInteger anInteger = 42;
    
  void(^testblock) (void) = ^{
    NSLog(@"integer is: %ld", anInteger);
    anInteger = 100;
    
};

testblock();
    NSLog(@"original anInteger: %ld",anInteger);
}

//block capture value
- (void)testMethod2 {
    NSInteger anInteger2 = 42;
    
    //반환타입, 메소드
    void (^testBlock)(void) = ^{
        NSLog(@"integer is :%ld", anInteger2);
        
    };
    NSInteger anInteger = 84;
    
    testBlock();
    //블록이 실행되는 부분
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
