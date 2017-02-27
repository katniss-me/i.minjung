//
//  ViewController.m
//  0220 UIViewControllerTest
//
//  Created by katniss on 2017. 2. 20..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "XecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *nb = [[UIButton alloc]initWithFrame:CGRectMake(30, 100, 100, 40)];
    [nb addTarget:self action:@selector(onselectedbt:) forControlEvents:UIControlEventTouchUpInside];
    [nb setTitle:@"don't click!" forState:UIControlStateNormal];
    [nb setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [nb setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    [self.view addSubview:nb];
    
    
}

- (void)onselectedbt:(UIButton*)sender
{
    //1. 스토리보드 객체 만들기
   UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];

//2. 뷰컨트롤러 객체 만들기
   SecondViewController *svc = [storyboard instantiateViewControllerWithIdentifier:@"secondViewController"];
 

   
    
//3. 페이지 전환
    [self presentViewController:svc animated:YES completion:nil];
    
    //*XIB사용법
//    XecondViewController *xvc = [[XecondViewController alloc]initWithNibName:@"XecondViewController" bundle:nil];
    
//
    
}



- (void)didReceiveMemoryWarning {
[super didReceiveMemoryWarning];
    
}


@end
