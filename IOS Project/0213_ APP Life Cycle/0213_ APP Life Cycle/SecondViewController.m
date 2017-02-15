//
//  SecondViewController.m
//  0213_ APP Life Cycle
//
//  Created by katniss on 2017. 2. 13..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
}

- (void)loadView{
    [super loadView];
    NSLog(@"loadView");
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSLog(@"viewWillAppear");
}

- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    NSLog(@"viewDidDisappear");
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
 
}



@end
