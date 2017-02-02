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
//- (void)viewDidLoad {
//    [super viewDidLoad];
//    
//    UIView *myView = [[UIView alloc] initWithFrame:CGRectMake(0,0,100,300)];
//    myView.backgroundColor = [UIColor blueColor];
//    myView.clipsToBounds = YES;
//    [self.view addSubview:myView];
//    
//    UIView *subView = [[UIView alloc] init];
//    subView.frame = CGRectMake(10, 30, 50, 200);
//    [subView setBackgroundColor:[UIColor redColor]];
//    //이건 myView.backgroundColor = [UIColor blueColor];
//    //이것과 완전 같다.
//    [myView addSubview:subView];
//
//    
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *myView = [[UIView alloc] initWithFrame:CGRectMake(15,15,345,100)];
    myView.backgroundColor = [UIColor blueColor];
//    myView.clipsToBounds = YES;
    [self.view addSubview:myView];
    
    UIView *subView = [[UIView alloc] init];
    subView.frame = CGRectMake(15, 500, 345, 100);
    [subView setBackgroundColor:[UIColor blackColor]];
    //이건 myView.backgroundColor = [UIColor blueColor];
    //이것과 완전 같다.
    [myView addSubview:subView];
    

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
