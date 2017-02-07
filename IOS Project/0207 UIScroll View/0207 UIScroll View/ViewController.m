//
//  ViewController.m
//  0207 UIScroll View
//
//  Created by katniss on 2017. 2. 7..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UIScrollViewDelegate>


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //UIScroll View
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 320 , 460)];
    //컨텐츠 사이즈 설정
    [scrollView setContentSize:CGSizeMake(scrollView.frame.size.width*3,460)];
    //델리게이트 설정
    scrollView.delegate = self;
    scrollView.pagingEnabled = YES;
    [self.view addSubview:scrollView];
    
    

    
    //View 1
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 460)];
    view1.backgroundColor = [UIColor blackColor];
    [scrollView addSubview:view1];
    
    
    
    
    //View 2
     UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(320, 0, 320, 460)];
     view2.backgroundColor = [UIColor redColor];
    [scrollView addSubview:view2];
    
    
    
    //view3
    UIView *view3 = [[UIView alloc] initWithFrame:CGRectMake(320*2 , 0, 320, 460)];
     view3.backgroundColor = [UIColor blueColor];
    [scrollView addSubview:view3];
    
    
    
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
