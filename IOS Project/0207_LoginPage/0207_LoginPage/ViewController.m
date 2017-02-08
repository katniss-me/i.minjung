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
@property UILabel *undertext;
@property UIButton *returnbutton;




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

    
    
    
//*스크롤 뷰 연동 ui view
    UIView *uiview = [[UIScrollView alloc] initWithFrame:CGRectMake(20, 50, 300, 1334)];
    [self.scroll addSubview:uiview];
    
    
//*text
//*첫번째 로고 텍스트
    UILabel *loginlv = [[UILabel alloc] initWithFrame:CGRectMake(50, 40, 300, 50)];
    loginlv.text = @"katniss login";
    loginlv.font = [UIFont systemFontOfSize:30];
    loginlv.textColor = [[UIColor redColor] colorWithAlphaComponent:0.8];
    [uiview addSubview:loginlv];
    
    
//*로그인 되었습니다 text
    self.undertext = [[UILabel alloc]initWithFrame:CGRectMake(50, 450, 300, 70)];
    self.undertext.text = @"로그인 되었습니다.";
    self.undertext.tag =3;
    self.undertext.textColor = [[UIColor redColor] colorWithAlphaComponent:0.8];
    self.undertext.font = [UIFont systemFontOfSize:20];
    [uiview addSubview:self.undertext];
    
    
    
//*이름 패스워드 라벨
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
    self.returnbutton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.returnbutton.frame = CGRectMake(230, 240, 100, 70);
    [self.returnbutton setTitle:@"확인" forState:UIControlStateNormal];
    self.returnbutton.titleLabel.font = [UIFont systemFontOfSize:20];
    self.returnbutton.tag =3;
    [self.returnbutton addTarget:self action:@selector(loginto:)forControlEvents:UIControlEventTouchUpInside];
    [self.returnbutton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [uiview addSubview:self.returnbutton];
    
    
}

//스크롤 올라갈때/ 내려갈때 키보드


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


//확인 버튼 누르면 로그인 되었습니다. 나타남

- (void)loginto :(UIButton *)sender
{
    if (sender.tag == 3) {
        NSLog(@"로그인 되었습니다.");
        [sender resignFirstResponder];
        [self.returnbutton becomeFirstResponder];
    }
    else if (sender.tag ==4){
        NSLog(@"이런 코드 넣은적 없는데");
        
    }
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
 
    

}


@end
