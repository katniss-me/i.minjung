//
//  ViewController.m
//  0206_UITextField
//
//  Created by katniss on 2017. 2. 6..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITextFieldDelegate>
@property UITextField *textFieldT;
@property UITextField *textFieldT2;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //cgfloat 300
    CGFloat margin3 = 300;
    
    
    
    
    // UITextField Test
    self.textFieldT = [[UITextField alloc] initWithFrame:CGRectMake(40, 40, margin3, 40)];
    self.textFieldT.borderStyle = UITextBorderStyleRoundedRect;
    self.textFieldT.placeholder = @"입력";
    self.textFieldT.delegate = self;
    self.textFieldT.tag = 1;
    self.textFieldT.textColor = [UIColor blackColor];
    [self.view addSubview:self.textFieldT];
    

    
    //uitextfield 2 만들기
    self.textFieldT2 = [[UITextField alloc] initWithFrame:CGRectMake(40, margin3+5, margin3, 40)];
    self.textFieldT2.borderStyle = UITextBorderStyleRoundedRect;
    self.textFieldT2.placeholder = @"입력";
    self.textFieldT2.delegate = self;
    self.textFieldT2.tag = 2;
    self.textFieldT2.textColor = [UIColor blackColor];
    [self.view addSubview:self.textFieldT2];
    
    
    
    
    // 확인 button 만들기
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.frame = CGRectMake(margin3, 40, margin3+20, 40);
    button1.backgroundColor = [UIColor blackColor];
    [button1 setTitle:@"클릭" forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(clickBar:) forControlEvents:(UIControlEventTouchUpInside)];
    [button1 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [_textFieldT addSubview:button1];
    
    
    
}

// textFieldShouldReturn

//- (BOOL)textFieldShouldReturn:(UITextField *)textField;
//{
//    NSLog(@"return key 눌렀다");
//    [textField resignFirstResponder];
//    return YES;
//}



// tag 붙이고 if 문으로

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (_textFieldT.tag ==1) {
        [self.textFieldT becomeFirstResponder]; //포커스를 잡기 때문에 올라감 //메소드 실행
    }
    else if (_textFieldT2.tag ==2) {
        [self.textFieldT2 resignFirstResponder];
    }
    else {
        NSLog(@"다시확인");
    
    }
    return YES;
    
}

//버튼 누르면, 밑에 tag 2로 가기

- (void)clickBar :(UIButton *) sender;
{
    NSLog(@"click  %lu Btn", sender.tag);
    
    if (sender.tag == 1) {
        NSLog(@"편안한 느낌");
     
    }else if(sender.tag == 2)
    {
        NSLog(@"따뜻한 느낌");
  
        
    }else
    {
        NSLog(@"어? 난 이런 태그 넣은적 없느데");
    }
    
    //--------------------------------is selected no or yes
//    
//    if (sender.isSelected) {
//        sender.selected = NO;
//    }else{
//        sender.selected = YES;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
   
    
    
    
}


@end
