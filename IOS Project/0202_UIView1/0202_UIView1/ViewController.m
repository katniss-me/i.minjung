//
//  ViewController.m
//  0202_UIView1
//
//  Created by katniss on 2017. 2. 2..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
//
- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *myView = [[UIView alloc] initWithFrame:CGRectMake(0,0,100,300)];
    myView.backgroundColor = [UIColor blueColor];
    myView.clipsToBounds = YES;
    [self.view addSubview:myView];
    
    UIView *subView = [[UIView alloc] init];
    subView.frame = CGRectMake(10, 30, 50, 200);
    [subView setBackgroundColor:[UIColor redColor]];
    //이건 myView.backgroundColor = [UIColor blueColor];
    //이것과 완전 같다.
    [myView addSubview:subView];
//
//    

    //1번 문제 : 안에 3개 view 만들기
//    
    UIView *myView2 = [[UIView alloc] initWithFrame:CGRectMake(15,15,self.view.frame.size.width-30,self.view.frame.size.height-30)];
    myView2.backgroundColor = [UIColor blueColor];
    [self.view addSubview:myView2];
    
    UIView *subView2 = [[UIView alloc] initWithFrame:CGRectMake(15, 15, myView2.frame.size.width -30, myView2.frame.size.height -30)];
    [subView setBackgroundColor:[UIColor blackColor]];
    [myView2 addSubview:subView2];
    
    UIView *subView3 = [[UIView alloc] initWithFrame:CGRectMake(15, 15, subView2.frame.size.width -30, subView2.frame.size.height -30)];
    [subView3 setBackgroundColor:[UIColor grayColor]];
    [myView addSubview:subView3];
//
    
//      //2번 문제 1 : 전체 창 하나 위에 위 height 64, 아래 height 48 띄운 view하나 만들기
//
//    
    UIView *myView3 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [myView3 setBackgroundColor :[UIColor greenColor]];
    [self.view addSubview:myView3];
    
    UIView *myViewSub = [[UIView alloc] initWithFrame:CGRectMake(0, 64, myView3.frame.size.width, myView3.frame.size.height -64 -48)];
    [myViewSub setBackgroundColor : [UIColor blackColor]];
    [myView2 addSubview:myViewSub];
//
    

    
    //3번 문제 : 중앙에 긴 네모 4개 배치하기
    //container
    CGSize allFrame = self.view.frame.size;
    UIView *container = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    [container setBackgroundColor:[UIColor greenColor]];
    [container setCenter:CGPointMake(allFrame.width/2, allFrame.height/2)];
    [self.view addSubview:container];
    
    //1.
    UIView *viewSub1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 90, 10)];
    [viewSub1 setBackgroundColor:[UIColor redColor]];
    [container addSubview:viewSub1];
    
    
//    UILabel
//    UIImageView
//    type

    
//    //객체 생성
//    UIImageView *imgView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 150)];
//    //이미지 설정
    
    //레이블 텍스트 설정
//   [UILabel setText:@"첫번째 레이블"];

    
//    //프로필 사진 만들기
//    
//    //전체 사용 변수 만들기
    CGFloat margin=10;
    CGFloat subX = margin;
    CGFloat subY = margin;
//
//    //기본 뷰
    UIView *baseView = [[UIView alloc] initWithFrame:CGRectMake(20, 50, allFrame.width- 40, 90)];
    baseView.layer.borderColor = [UIColor grayColor].CGColor; //테두리 칼라
    baseView.layer.borderWidth =1; //테두리 그린것
    baseView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:baseView];
//
//    //이미지 영역
    UIImageView *myImg = [[UIImageView alloc] initWithFrame:CGRectMake(subX, subX, 70, 70)];
    myImg.image = [UIImage imageNamed:@"myImg.png"];
    myImg.contentMode = UIViewContentModeScaleAspectFit;
    [baseView addSubview:myImg];
//
    //타이틀 영역
    UILabel *titleView = [[UILabel alloc] initWithFrame:CGRectMake(subX+70+subX, subY, baseView.frame.size.width-70-subX-subX, 70)];
    titleView.text = @"UILabel Font";
    titleView.font = [UIFont systemFontOfSize:30];
//    titleView.textColor = []
    [baseView addSubview:titleView];
    
    
    //오른쪽 이미지 영역*
    UIImageView *subImg = [[UIImageView alloc] initWithFrame:CGRectMake(subX+70+subX, subY, 70, 70)];
    subImg.layer.borderColor = [UIColor redColor].CGColor; //테두리 칼라
    subImg.layer.borderWidth =1; //테두리 그린것
    subImg.image = [UIImage imageNamed:@"myImg2.png"];
    [baseView addSubview:subImg];
//


//
//    //UIButton예제
    subY = baseView.frame.size.height + margin + 20;
    UIButton *testbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    testbtn.frame = CGRectMake(baseView.frame.size.width/2-50, subY, 100,35);
    [testbtn setTitle:@"on" forState:(UIControlStateNormal)];
    [testbtn setTitle:@"off" forState:(UIControlStateHighlighted)];
    [testbtn addTarget:self action:@selector(didSelectedBtn:) forControlEvents:UIControlEventTouchUpInside];
    [testbtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:testbtn];
     
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
