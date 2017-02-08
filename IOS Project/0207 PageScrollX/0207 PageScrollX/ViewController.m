//
//  ViewController.m
//  0207 PageScrollX
//
//  Created by katniss on 2017. 2. 7..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

<UIScrollViewDelegate>
@property UIPageControl *ctl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    
   


//페이지 컨트롤러 만들기
    
//페이지 컨트롤러
    
    self.ctl  = [[UIPageControl alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height-30, self.view.frame.size.width , 30)];
    self.ctl.backgroundColor = [[UIColor redColor]colorWithAlphaComponent:0.2];
  
    [self.ctl setNumberOfPages:3];
    [self.view addSubview:self.ctl];
    
    
    
//스크롤 뷰 만들기
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 320 , 460)];
    //컨텐츠 사이즈 설정
    [scrollView setContentSize:CGSizeMake(scrollView.frame.size.width*3,460)];
    //델리게이트 설정
    scrollView.delegate = self;
//    scrollView.pagingEnabled = YES;
    [self.view addSubview:scrollView];
    
    
    
//    UIView1
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width,self.view.frame.size.height-30 )];
    view1.backgroundColor = [UIColor redColor];
    [self.view addSubview:view1];
    
    
    UIImageView *imglayer = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height-30)];
    imglayer.image = [UIImage imageNamed:@"d8.png"];
    [view1 addSubview:imglayer];

    
//    UIView2
    UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width,self.view.frame.size.height-30 )];
    view2.backgroundColor = [UIColor redColor];
    [self.view addSubview:view2];
    
    
    UIImageView *imglayer2 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height-30)];
    imglayer2.image = [UIImage imageNamed:@"d10.png"];
    [view2 addSubview:imglayer2];
    
    
//    UIView3
    UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width,self.view.frame.size.height-30 )];
    view3.backgroundColor = [UIColor redColor];
    [self.view addSubview:view3];
    
    
    UIImageView *imglayer3 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height-30)];
    imglayer3.image = [UIImage imageNamed:@"dd.png"];
    [view3 addSubview:imglayer3];
    
}

 // 스크롤 뷰 액션 - delegate



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
    
    
}


@end
