//
//  ViewController.m
//  0308 CoupleMission
//
//  Created by katniss on 2017. 3. 8..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"


@interface ViewController ()
<UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITableView *myTableView;
@property (strong, nonatomic) NSArray *arrayList;
@property (strong, nonatomic) NSDictionary *tableList1;
@property (weak, nonatomic) IBOutlet UIView *btView;
@property (weak, nonatomic) IBOutlet UITextField *btTextField;
@property (weak, nonatomic) IBOutlet UIButton *btDone;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.btTextField.delegate = self;
   
    //delegate
    self.myTableView.delegate = self;
    self.myTableView.dataSource = self;
    
    self.myTableView.layer.cornerRadius = 8;
    
    //dictionary list
     NSDictionary *tableList1 = @{@"value":@"여자친구에게 선물을 주며 사랑을 표현한다."};
     NSDictionary *tableList2 = @{@"value":@"안마해 주는날."};
     NSDictionary *tableList3 = @{@"value":@"여자친구에게 꽃을 주며 기념일을 축복한다."};
     NSDictionary *tableList4 = @{@"value":@"한강 데이트를 하며 기분전환을 한다."};
    
     self.arrayList = [[NSArray alloc] initWithObjects:tableList1,tableList2,tableList3,tableList4, nil];

    
    //profile img 넣기
     self.myProfileImg.image = [UIImage imageNamed:@"p1.png"];
    
     self.connectImg.image = [UIImage imageNamed:@"connect.png"];
    
     self.yourProfileImg.image = [UIImage imageNamed:@"p2.png"];
    
    
    //bound
    self.myProfileImg.layer.cornerRadius = 45;
    self.myProfileImg.layer.masksToBounds = YES;
    
    self.yourProfileImg.layer.cornerRadius = 45;
    self.yourProfileImg.layer.masksToBounds = YES;
    
    
 
    
}


-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
 
    
}

//1.section*
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

//2.row* - tablelist
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.arrayList.count;
}

//3. uitableview cell*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSLog(@"%ld", indexPath.row);
    
//4. dequeue* 하고 identifier*
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"hello" forIndexPath:indexPath];
    
    
//5.dictionary* -> array*에서 indext.row*
    NSDictionary *dictemp = [_arrayList objectAtIndex:indexPath.row];
    
    
//6.table cell에 list 넣어주기
    //table cell에 list 넣어주기
//    cell.missionH.text = [dictemp objectForKey:@"key"];
    cell.missionLable.text = [dictemp objectForKey:@"value"];
    

    
    
//return cell 
    return cell;
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
  
}

- (IBAction)addBtnClick:(id)sender {
    
    self.btView.center = CGPointMake(self.view.center.x, self.view.frame.size.height + self.btView.frame.size.height/2);

    [self.btView setHidden:NO];
    
    [UIView animateWithDuration:1 animations:^{
        self.btView.center = CGPointMake(self.view.center.x, self.view.center.y);
    }];
    
    
    
    
}

- (IBAction)hiddenView:(id)sender {
    
    [self.btView setHidden:YES];
    NSLog(@"%@", self.btTextField.text);
    self.btTextField.text = @"";
    
    [self.btTextField resignFirstResponder];
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    
    return YES;
}

@end
