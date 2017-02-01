//
//  Teacher.m
//  Fast4f
//
//  Created by katniss on 2017. 1. 19..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "Teacher.h"

@interface Teacher () //시작

@property NSInteger teacherNo;
@property NSInteger height;

@end //끝


@implementation Teacher

- (id)teach {
    NSLog(@"학생을 가르칩니다.");
    return nil;

}

- (id)talk {
    NSLog(@"이야기를 합니다.");
    return nil;
    
}

//헤드부분은 반드시 부모가 갖고 있는 메소드와 똑!같아야한다!!
- (void)talkTo:(ObjectiveClass *)obj를받은애{    //obj가 넘어왔는데
    
//    구현부가 .하나만 바뀌어도 재정의(오버라이딩)
    NSLog(@"%ld와 선생님에 대한 대화를 합니다..",obj를받은애.age);
    [super study];
}

//teacher가 스타벅스를 마신다.
- (void)drink:(Cup *)starbucks{
    NSLog(@"%ld을 만든다!!!.",starbucks.holder);
    [super make];
    
}


@end
