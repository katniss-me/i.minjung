//
//  ViewController.m
//  0207_LoginPage
//
//  Created by katniss on 2017. 2. 7..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


<UITextFieldDelegate>
@property UITextField *nameField;
@property UITextField *passwordField;
@property UIButton *nameButton;
@property UIScrollView *scroll;





@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
//*로그인 페이지 만들기
  
//*scroll view

    self.scroll = [[UIScrollView alloc] initWithFrame:CGRectMake(20, 50, 400, 600)];
    //컨텐트 사이즈 설정
    [self.scroll setContentSize:CGSizeMake(self.scroll.frame.size.width,1334)];
    [self.view addSubview:self.scroll];

    
    
    
//ui view 만들기
    UIView *uiview = [[UIScrollView alloc] initWithFrame:CGRectMake(20, 50, 300, 1334)];
    [self.scroll addSubview:uiview];
    
    
//*text
//login text view
    UILabel *loginlv = [[UILabel alloc] initWithFrame:CGRectMake(50, 50, 300, 50)];
    loginlv.text = @"katniss login";
    loginlv.font = [UIFont systemFontOfSize:30];
    loginlv.textColor = [[UIColor redColor] colorWithAlphaComponent:0.8];
    [uiview addSubview:loginlv];
    

//name text label
    UILabel *ntl = [[UILabel alloc] initWithFrame:CGRectMake(50, 100, 200, 50)];
    ntl.text = @"이름";
//    ntl.numberOfLines = 1;
    ntl.textColor = [[UIColor redColor] colorWithAlphaComponent:0.8];
    ntl.font = [UIFont systemFontOfSize:20];
//    ntl.textAlignment = 1;
    [uiview addSubview:ntl];
    
    
//button text label
    UILabel *btl = [[UILabel alloc] initWithFrame:CGRectMake(50, 200, 200, 50)];
    btl.text = @"패스워드";
//    btl.numberOfLines = 1;
    btl.textColor = [[UIColor redColor] colorWithAlphaComponent:0.8];
    btl.font = [UIFont systemFontOfSize:20];
//    btl.textAlignment = 1;
    [uiview addSubview:btl];
    
    
                                                         
//*field
    
//name text field

    self.nameField = [[UITextField alloc] initWithFrame:CGRectMake(50, 150, 200, 50)];
    self.nameField.borderStyle = UITextBorderStyleRoundedRect;
    self.nameField.placeholder = @"입력";
    self.nameField.delegate = self;
    self.nameField.tag =1;
    self.nameField.textColor = [UIColor blackColor];
    [uiview addSubview:self.nameField];
    
    
    
//ui password field
    self.passwordField = [[UITextField alloc] initWithFrame:CGRectMake(50, 250, 200, 50)];
    self.passwordField.borderStyle = UITextBorderStyleRoundedRect;
    self.passwordField.placeholder = @"입력";
    self.passwordField.delegate = self;
    self.passwordField.tag = 2;
    self.passwordField.textColor = [UIColor redColor];
    [uiview addSubview:self.passwordField];

    
    

    
    
//확인 button
    UIButton *returnButton = [UIButton buttonWithType:UIButtonTypeCustom];
    returnButton.frame = CGRectMake(230, 240, 100, 70);
    [returnButton setTitle:@"확인" forState:UIControlStateNormal];
    returnButton.titleLabel.font = [UIFont systemFontOfSize:20];
    [returnButton addTarget:self action:@selector(loginto:)forControlEvents:UIControlEventTouchUpInside];
    [returnButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [uiview addSubview:returnButton];
    
    
}

//스크롤 올라갈때/ 내려갈때


- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    NSLog(@"올라간다");
    [self.scroll setContentOffset:CGPointMake(0, 50) animated:YES];
}

- (void)textFieldDidEndEditing:(UITextField *)textField

{
    NSLog(@"내려간다");
    [self.scroll setContentOffset:CGPointMake(0, 0) animated:YES];
    
    
}


//이름입력 끈나면 / 패스워드로 내려감

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    if (textField.tag ==1) {
        [textField resignFirstResponder]; //포커스를 잃었으므로 다음으로 넘어간다
        [self.passwordField becomeFirstResponder]; //포커스를 갖게 된다.
    }
    else if (textField.tag ==2){
        [textField resignFirstResponder]; //포커스를 잃게 되어 키보드가 내려간다.
    
    }
    
    return YES;
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
 
    

}


@end
