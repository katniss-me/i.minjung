//
//  SecondViewController.m
//  0220 UIViewControllerTest
//
//  Created by katniss on 2017. 2. 20..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "SecondViewController.h"
#import "XecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *nb = [[UIButton alloc]initWithFrame:CGRectMake(30, 100, 100, 40)];
    [nb addTarget:self action:@selector(onBackBtn:) forControlEvents:UIControlEventTouchUpInside];
    [nb setTitle:@"BACK" forState:UIControlStateNormal];
    [nb setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [nb setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    [self.view addSubview:nb];
    
    
}
- (IBAction)nextbtn:(UIButton *)sender {
    //xib viewcontroller
      XecondViewController *xvc = [[XecondViewController alloc]initWithNibName:@"XecondViewController" bundle:nil];
    
    //using storyboard viewcontroller
     
    
    [self presentViewController:xvc animated:YES completion:nil];
    
    
}

-(void)onBackBtn:(UIButton *)sender{
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
