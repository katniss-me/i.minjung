//
//  AlertViewController.m
//  0308 CoupleMission
//
//  Created by katniss on 2017. 3. 9..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "AlertViewController.h"

@interface AlertViewController ()

@end

@implementation AlertViewController

- (void)viewDidLoad {
    [super viewDidLoad];

      self.alertImg.image = [UIImage imageNamed:@"p2.png"];
      self.backImg.image = [UIImage imageNamed:@"d10.png"];
    
    self.alertImg.layer.cornerRadius = 45;
    self.alertImg.layer.masksToBounds = YES;

     self.missionText.text = @"내가 바라는 것은 오늘 아무것도 안하기야 ^^";
  
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
- (IBAction)clickDone:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

@end
