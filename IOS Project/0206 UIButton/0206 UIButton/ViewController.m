//
//  ViewController.m
//  0206 UIButton
//
//  Created by katniss on 2017. 2. 6..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property UILabel *label1;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // UIButton 눌렀다 땠을때 효과 실습
    
    //margin 만들기
    CGFloat margin = 30;
    CGFloat marginX = margin;
    CGFloat marginY = margin;
    
    
    CGFloat allFrameW = self.view.frame.size.width;
    CGFloat allFrameH = self.view.frame.size.height;
    
    
    //-------------------------------------------container
    
    //container1
    UIView *container = [[UIView alloc] initWithFrame:CGRectMake(marginX, marginY, allFrameW-50, 333.5)];
//    container.backgroundColor = [UIColor blackColor];
    container.layer.borderColor = [UIColor blackColor].CGColor;
    container.layer.borderWidth = 1;
    [self.view addSubview:container];
    
    
    //container2
    UIView *container2 = [[UIView alloc] initWithFrame:CGRectMake(marginX+40, marginY+40, allFrameW/2, 100)];
//    container2.backgroundColor = [UIColor yellowColor];
    container2.layer.borderColor = [UIColor blackColor].CGColor;
    container2.layer.borderWidth = 1;
    [self.view addSubview:container2];
    
    
    //------------------------------------------ui button
    
    
    
    //ui button1
    UIButton *uiButton = [UIButton buttonWithType:UIButtonTypeCustom];
    uiButton.frame = CGRectMake(marginX+20, marginY+20, 100, 50);
    uiButton.tag = 1;
    [uiButton setTitle:@"on" forState:UIControlStateNormal];
    [uiButton setTitle:@"off" forState:UIControlStateSelected];
    [uiButton addTarget:self action:@selector (tabBar:)forControlEvents:UIControlEventTouchUpInside];
    [uiButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [uiButton setTitleColor:[UIColor yellowColor] forState:UIControlStateHighlighted];
    [container addSubview:uiButton];
    

    //ui button2
    UIButton *uiButton2 = [UIButton buttonWithType:UIButtonTypeCustom];
    uiButton2.frame = CGRectMake(marginX+20, marginY+200, 100, 50);
    uiButton2.tag = 2;
    [uiButton2 setTitle:@"1" forState:UIControlStateNormal];
    [uiButton2 setTitle:@"2" forState:UIControlStateSelected];
    [uiButton2 addTarget:self action:@selector(tabBar:) forControlEvents:UIControlEventTouchUpInside];
    [uiButton2 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [uiButton2 setTitleColor:[UIColor yellowColor] forState: UIControlStateHighlighted];
    [container addSubview:uiButton2];
    
    
    //-----------------------------------------ui Label
    
    
    //ui label
    self.label1 = [[UILabel alloc] initWithFrame:CGRectMake(3, 400, 300, 30)];
    self.label1.text = @"Katniss's light on app";
    self.label1.font = [UIFont systemFontOfSize:30];
    [container addSubview:self.label1];

}
    //----------------------------------ui button sender

- (void)tabBar:(UIButton *)sender
{
    NSLog(@"click  %lu Btn", sender.tag);
    
    if (sender.tag == 1) {
        NSLog(@"편안한 느낌");
        self.label1.text = @"1";
    }else if(sender.tag == 2)
    {
        NSLog(@"따뜻한 느낌");
        self.label1.text = @"2";
        
    }else
    {
        NSLog(@"어? 난 이런 태그 넣은적 없느데");
    }

    
    //--------------------------------is selected no or yes
    
    if (sender.isSelected) {
        sender.selected = NO;
    }else{
        sender.selected = YES;
    }
    
    

    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
  
  
    
}


@end
