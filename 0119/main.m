//
//  main.m
//  Fast4f
//
//  Created by katniss on 2017. 1. 19..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Table.h"
#import "Chair.h"
#import "Cup.h"
#import "NoteBook.h"
#import "Human.h"
#import "Student.h"
#import "Teacher.h"



int main(int argc, const char * argv[]) {
    
    
    //오브젝티브클래스 만들기
    ObjectiveClass *obj = [[ObjectiveClass alloc] init];
    obj.name = @"obj";
    obj.age = 20;
    
    //학생 공부시키기
    
    Student *me = [[Student alloc] init];
    me.studentName = @"katniss";
    me.brain = 8;
    me.typeWrighter = 7;
    
    
    //선생님 일하기
    
    Teacher *you = [[Teacher alloc] init];
    you.teacherName = @"youngmin";
    you.power = 9;
    you.work = 10;
    
    
    //노트북 전기 공급하기
    
    NoteBook *this = [[NoteBook alloc] init];
    this.noteBookName = @"Mac";
    this.keyboard = @"hardWork";
    this.monitor = 100;
    
    
    //table 불러오기
    
    Table *it = [[Table alloc] init];
    it.tableName = @"테이블";
    
    //CUP만들기
    
    Cup *starbucks = [[Cup alloc] init];
    starbucks.holder = 1;
    
    
    //학생 노트북 타자치기
    [me typeWrightTo];

    
    //teacher와 obj 대화하기
    [you talkTo:obj];
    
    //teacher가 스타벅스를 마신다.
    [you drink:starbucks];
    
    
    
    return 0;
}
