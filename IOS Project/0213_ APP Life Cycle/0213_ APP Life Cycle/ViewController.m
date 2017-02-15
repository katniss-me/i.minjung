//
//  ViewController.m
//  0213_ APP Life Cycle
//
//  Created by katniss on 2017. 2. 13..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"viewDidLoad");
    // Do any additional setup after loading the view, typically from a nib.
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
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    NSLog(@"dealloc");
}

- (IBAction)Action:(UIButton *)sender {
}

- (IBAction)id입력:(id)sender {
}

- (IBAction)passwordLogIn:(UITextField *)sender {
}

- (IBAction)logIn:(UIButton *)sender {
}

- (IBAction)facebooklogin:(UIButton *)sender {
}

- (IBAction)id:(UITextField *)sender {
}
@end
