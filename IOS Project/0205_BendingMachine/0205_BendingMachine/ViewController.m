//
//  ViewController.m
//  0205_BendingMachine
//
//  Created by katniss on 2017. 2. 5..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property UILabel *secondDownText;
@property UILabel *thirdDownText2;


@end
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // 자판기 만들기 //
    
    //allframe 만들기
//    CGSize allFrame = self.view.frame.size;

    
    //margin 만들기
    CGFloat margin=10;
    CGFloat subX = margin;
    CGFloat subY = margin;
    
    //margin 20
    CGFloat margin20=20;
    CGFloat subX20 = margin20;
    CGFloat subY20 = margin20;
    
    //inner margin 만들기
    CGFloat margin21=21;
    CGFloat subX21 = margin21;
    CGFloat subY21 = margin21;

    
   //------------------------------------1
    
    //frame 1
    UIView *upperFirst = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 187.5, 240)];
    upperFirst.backgroundColor = [[UIColor redColor] colorWithAlphaComponent:0.1f];
    [self.view addSubview:upperFirst];
    
    //frame 1 sub
    UIView *upperFirstSub = [[UIView alloc] initWithFrame:CGRectMake(subX20, subY20, 157.5 , 220)];
    upperFirstSub.layer.borderColor = [UIColor blackColor].CGColor; //테두리 칼라
    upperFirstSub.layer.borderWidth =1; //테두리 그린것
    [upperFirst addSubview:upperFirstSub];

    
    UIImage *firstImg = [UIImage imageNamed:@"a1.png"];
    
    //frame 1 button
    UIButton *firstBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    firstBtn.frame = CGRectMake(subX21, subY21, 155.5 , 218);
    firstBtn.backgroundColor = [UIColor redColor];
    [firstBtn setImage:firstImg forState:UIControlStateNormal];
    [firstBtn setTitle:@"first" forState:UIControlStateNormal];
    [upperFirst addSubview:firstBtn];
 


    //------------------------------------2
    
    //frame 2
    UIView *upperSecond = [[UIView alloc] initWithFrame:CGRectMake(187.5, 0, 187.5, 240)];
    upperSecond.backgroundColor = [[UIColor redColor] colorWithAlphaComponent:0.1f];
    [self.view addSubview:upperSecond];
    
    //frame 2 sub
    UIView *upperSecondSub = [[UIView alloc] initWithFrame:CGRectMake(subX, subY20, 157.5, 220)];
    upperSecondSub.layer.borderColor = [UIColor blackColor].CGColor; //테두리 칼라
    upperSecondSub.layer.borderWidth =1; //테두리 그린것
    [upperSecond addSubview:upperSecondSub];
    

    
    //img 2 alloc
    UIImage *upperSecondImg = [UIImage imageNamed:@"d11.png"];
    
    //frame 2 button
    UIButton *secondBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    secondBtn.frame = CGRectMake(subX+1, subY21, 155.5 , 218);
    [secondBtn setImage:upperSecondImg forState:UIControlStateNormal];
    [secondBtn setTitle:@"second" forState:UIControlStateNormal];
    [upperSecond addSubview:secondBtn];

    
    //----------------------------------3
    
    //frame 3
    UIView *downFirst = [[UIView alloc] initWithFrame:CGRectMake(0, 240, 187.5, 240)];
    downFirst.backgroundColor = [[UIColor redColor] colorWithAlphaComponent:0.1f];
    [self.view addSubview:downFirst];
    
    //frame 3 Sub
    UIView *downFirstSub = [[UIView alloc] initWithFrame:CGRectMake(subX20,subY20, 157.5, 220)];
    downFirstSub.layer.borderColor = [UIColor blackColor].CGColor; //테두리 칼라
    downFirstSub.layer.borderWidth =1; //테두리 그린것
    [downFirst addSubview:downFirstSub];
    

    //img 3 alloc
    UIImage *downFirstImg = [UIImage imageNamed:@"d5.png"];
    
    
    //frame 3 button
    UIButton *downFirstBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    downFirstBtn.frame = CGRectMake(subX21, subY21, 155.5 , 218);
    [downFirstBtn setImage:downFirstImg forState:UIControlStateNormal];
    [downFirstBtn setTitle:@"downFirst" forState:UIControlStateNormal];
    [downFirst addSubview:downFirstBtn];


    //------------------------------------4
    
    
    //frame 4
    UIView *downSecond = [[UIView alloc] initWithFrame:CGRectMake(187.5, 240, 187.5, 240)];
    downSecond.backgroundColor = [[UIColor redColor] colorWithAlphaComponent:0.1f];
    [self.view addSubview:downSecond];
    
    //frame 4 sub
    UIView *downSecondSub = [[UIView alloc] initWithFrame:CGRectMake(subX,subY20, 157.5, 220)];
    downSecondSub.layer.borderColor = [UIColor blackColor].CGColor; //테두리 칼라
    downSecondSub.layer.borderWidth =1; //테두리 그린것
    [downSecond addSubview:downSecondSub];
    


    //img 4 alloc
    UIImage *downSecondImg = [UIImage imageNamed:@"d7.png"];
    
    
    //frame 4 button
    UIButton *downSecondBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    downSecondBtn.frame = CGRectMake(subX+1, subY21, 155.5 , 218);
    [downSecondBtn setImage:downSecondImg forState:UIControlStateNormal];
    [downSecondBtn setTitle:@"downSecond" forState:UIControlStateNormal];
    [downSecond addSubview:downSecondBtn];
    
    //------------------------------------5
    
    
    //secondDown frame 5
    UIView *secondDown2 = [[UIView alloc] initWithFrame:CGRectMake(0, 480, 375, 105)];
    secondDown2.backgroundColor = [[UIColor redColor] colorWithAlphaComponent:0.1f];
    [self.view addSubview:secondDown2];
 
    
    //secondDown frame sub 5
    UIView *secondDown2Sub = [[UIView alloc] initWithFrame:CGRectMake(subX20, subY20, 335, 85)];
    secondDown2Sub.backgroundColor = [[UIColor redColor] colorWithAlphaComponent:0.1f];
    secondDown2Sub.layer.borderColor = [UIColor purpleColor].CGColor; //테두리 칼라
    secondDown2Sub.layer.borderWidth =1; //테두리 그린것
    secondDown2Sub.layer.cornerRadius =6.0;
    secondDown2Sub.layer.masksToBounds =true;
    [secondDown2 addSubview:secondDown2Sub];
    
    
    //5 text 1
    self.secondDownText = [[UILabel alloc] initWithFrame:CGRectMake(subY20+10,subY20,310,90)];
    self.secondDownText.text = @"The Grand Budapest Hotel";
    self.secondDownText.numberOfLines = 4;
    self.secondDownText.textColor = [[UIColor redColor] colorWithAlphaComponent:0.8];
    self.secondDownText.font = [UIFont systemFontOfSize:12];
    self.secondDownText.textAlignment = 1;
    [secondDown2 addSubview:self.secondDownText];


    
    
    
    //------------------------------------6
    
    //thirdDown frame 6
    UIView *thirdDown = [[UIView alloc] initWithFrame:CGRectMake(0, 585, 480, 82)];
    thirdDown.backgroundColor = [[UIColor redColor] colorWithAlphaComponent:0.1f];
    [self.view addSubview:thirdDown];
    
    
    //thirdDown frame 6 sub
    UIView *thirdDownSub = [[UIView alloc] initWithFrame:CGRectMake(subX20, subY20, 335, 47)];
    thirdDownSub.backgroundColor = [[UIColor purpleColor] colorWithAlphaComponent:0.6f];
    thirdDownSub.layer.borderColor = [UIColor blackColor].CGColor; //테두리 칼라
    thirdDownSub.layer.borderWidth =1; //테두리 그린것
    thirdDownSub.layer.cornerRadius =6.0;
    thirdDownSub.layer.masksToBounds =true;
    [thirdDown addSubview:thirdDownSub];
    
    


    //thirdDown fame 6 text
    self.thirdDownText2 = [[UILabel alloc] initWithFrame:CGRectMake(subY20+4,0,335,90)];
    self.thirdDownText2.text = @"The Grand Budapest Hotel";
    self.thirdDownText2.font = [UIFont systemFontOfSize:20];
    self.thirdDownText2.textColor = [[UIColor yellowColor] colorWithAlphaComponent:0.9f];
    self.thirdDownText2.textAlignment = 1;
    [thirdDown addSubview:self.thirdDownText2];
    
    
    
    //*버튼 눌렀을때 액션
    [firstBtn addTarget:self action:@selector(didSelectedBtn:) forControlEvents:UIControlEventTouchUpInside];
    [secondBtn addTarget:self action:@selector(didSelectedBtn:) forControlEvents:UIControlEventTouchUpInside];
    [downFirstBtn addTarget:self action:@selector(didSelectedBtn:) forControlEvents:UIControlEventTouchUpInside];
    [downSecondBtn addTarget:self action:@selector(didSelectedBtn:) forControlEvents:UIControlEventTouchUpInside];

    
    //*didSelected 버튼 if문
}
-(void)didSelectedBtn:(UIButton *)sender {
    if([sender.currentTitle isEqualToString:@"first"]){
        self.secondDownText.text = @"The Grand Budapest Hotel is a 2014 comedy film written and directed by Wes Anderson from a story by Anderson and Hugo Guinness, inspired by the writings of Stefan Zweig.";
        self.thirdDownText2.text = @"The New Robby Boy: 20$";
        
    }
    else if ([sender.currentTitle isEqualToString:@"second"]){
        self.secondDownText.text = @"The film is an American-German-British co-production that was financed by German financial companies and film-funding organizations. It was filmed in Germany.";
        self.thirdDownText2.text = @"Schloss Lutz Overture : 10$";
        
    }
    else if ([sender.currentTitle isEqualToString:@"downFirst"]){
        self.secondDownText.text = @"The film led the BAFTA nominations, with its 11 nominations including Best Film and Best Director for Anderson, and Best Actor for Fiennes.";
        self.thirdDownText2.text = @"Mendle's Hat : 40$";
}
    else if ([sender.currentTitle isEqualToString:@"downSecond"]){
        self.secondDownText.text = @"Upon arriving in prison, Gustave finds himself stuck in a cell with hardened criminals, but earns their respect after he 'beat the living shit' out of one of them for 'questioning virility.'";
        self.thirdDownText2.text = @"No Safe-House : 60$";

}
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
