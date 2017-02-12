//
//  ViewController.m
//  0209 Dictionary
//
//  Created by katniss on 2017. 2. 9..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   
    
    //upgrade for문 해보기
//    NSArray *list1 = @[@"k",@"o",@"r",@"e",@"a"];
//    NSArray *list2 = @[@"e",@"r",@"a",@"s",@"e",@"r"];
    
    //string 반으로 나눠서 0,1,2
//    substringwithrange > arrange에 넣어
    //string > array로 바꾸는 것 or string으로만.
    //잘라서, if문 짝수면, +-
    //string으로 바로 하면, korea
    
   
    
    //for문 실습
    NSArray *list2 = @[@"1",@"2",@"3",@"4",@"5"];
    
    for (NSInteger i=0; i<list2.count; i++)
    {
        NSLog(@"%@",list2[i]);
    }
    
    //이 for문과 같게 쓰는 것. for - in문.
    for (NSString *num in list2)
    {
        NSLog(@"%@",num);
    }
    
    
    
    //1. Array 실습
    
    NSArray *list = [[NSArray alloc] initWithObjects:@"1",@"2",@"3", nil];

    
    
    NSDictionary *dic = [[NSDictionary alloc] initWithObjects:@[@"joo",@"joo1"] forKeys:@[@"key1",@"key2"]];
    NSDictionary *dic2 = @{@"key0":@"value0",@"key1":@"value1",@"key2":@"value2"};
    
    
    for (NSInteger i= 0; i<list.count; i++) {
        NSString *num = [list objectAtIndex:i];
        NSLog(@"%@",num);
    }
    //위와 같다는 뜻
//    for (NSString *num in list2) {
//        NSLog(@"%@",num);
    
    
    
    for (NSString *key in dic) {
        NSString *str = [dic objectForKey:key];
        NSLog(@"%@",str);
    }
    
//    NSString *resultstr = @"";
//    for (NSString *key in dic){
//        NSString *str = [dic]
//        NSLog(@)

    
    //2. 중복빼기 문제
    
    //1 1 3 3 6 7 8 > 1 3 6 7 8
    //스트링으로 받고, a,b,a,c,b 이렇게 받으면 줄이는 메소드 지나면, a,b,c이렇게 세개만 남아야 함.

    NSArray *list3 = [[NSArray alloc] initWithObjects:@"1",@"1",@"3",@"3",@"6",@"7",@"8", nil];
    
    
    
//    NSDictionary *dict1 = [[NSDictionary alloc] initWithObjects:@[@"me",@"me1"] forKeys:@[@"key1",@"key2"]];
//    NSDictionary *dict2 = @{@"key0":@"value0",@"key1":@"value1",@"key2":@"value2"};
//    
    
    for (NSInteger i=0; i<list3.count; i++) {
        NSString *num2 = [list3 objectAtIndex:i];
        NSLog(@"%@",num2);
    }
    //위와 같다는 의미
//    for (NSString *num2 in list3) {
//        NSLog(@"%@",num2);
    
    
    NSString *result =@"";
    for (NSString *key in dic2){
        NSString *str2 = [dic2 objectForKey:key];
        result = [result stringByAppendingString:[NSString stringWithFormat:@"%@ |",str2]];
        
        
        
//더해서 반환함 //stringwithformat은 | 을 사용하는 것. 스트링을 포멧형태로 사용하겠다.

    //array를 mutablearray로 확인하면 된다.
    NSMutableArray *result = [[NSMutableArray alloc] init];
    for (NSString *j in list3) {
        
        if (![result containsObject:j]){
            [result addObject:j];
            NSLog(@"%@",j);
        }
    
    }
    }
    //3. 오름차순 bubble sort 하기
    NSArray *sortedList = [[NSArray alloc]initWithObjects:@"3",@"4",@"6",@"9",@"2",@"1",@"5",@"7",@"8", nil];
    
//    NSArray *result4 = [self unsortedList:bubbleSort];
////
    
    
//hint : i 번째와  i+1번째를 비교해서 swap 시킴
    
}

-(NSArray *)bubbleSort:(NSArray *)unsortedList
{
    NSMutableArray *sortedList = [NSMutableArray arrayWithArray:unsortedList];    //알고리즘
    //리스트의 갯수만큼 실행
    for (NSInteger i=0; i<unsortedList.count; i++ )
        for (NSInteger j=0; j<unsortedList.count-1; i--){
            //획수만큼 실행할거라 in문을 하지 않음
            
            if (j+1 == unsortedList.count-1) {
                //만약 j+1 번째가 list길이보다 크다면 종료
                NSInteger fN = [[sortedList objectAtIndex:j] integerValue];
                NSInteger sN = [[sortedList objectAtIndex:j+1] integerValue];
                //i번째와 i+1번째 두 수를 비교
                if (fN>sN) {
                    //i>i+1 이라면 두 수를 스압
                    [sortedList replaceObjectAtIndex:j withObject:[NSString stringWithFormat:@"%ld",sN]];
                    [sortedList replaceObjectAtIndex:j+1 withObject:[NSString stringWithFormat:@"%ld",fN]];
                    
                }
                
            }
        }
    return sortedList;
    }
    






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
