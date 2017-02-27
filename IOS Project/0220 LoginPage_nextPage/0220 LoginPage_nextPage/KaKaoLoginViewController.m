//
//  KaKaoLoginViewController.m
//  0220 LoginPage_nextPage
//
//  Created by katniss on 2017. 2. 20..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "KaKaoLoginViewController.h"

@interface KaKaoLoginViewController ()

@end

@implementation KaKaoLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    //여기에서 시작
    self.navigationItem.title = @"myVC";
    [self.navigationController.navigationBar setTintColor:[UIColor blueColor]];
    
    //back
    UIButton *back = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 35, 35)];
    [back setBackgroundImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
    [back addTarget:self action:@selector(backClick:) forControlEvents:UIControlEventTouchUpInside];
    
    //item
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:back];
    self.navigationItem.leftBarButtonItem = item;
    
}




- (void)backClick:(UIButton*)sender
{
    NSLog(@"back log");
    [self.navigationController popViewControllerAnimated:YES];
    


    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
