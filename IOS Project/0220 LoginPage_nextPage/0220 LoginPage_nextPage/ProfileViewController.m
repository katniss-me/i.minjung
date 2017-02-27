//
//  ProfileViewController.m
//  0220 LoginPage_nextPage
//
//  Created by katniss on 2017. 2. 20..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "ProfileViewController.h"
#import "TableViewCell.h"
#import "DataCenter.h"
//1.tableviewcell import해주고

@interface ProfileViewController ()
//2.uitableview delegate, datasorce delegate  해주고
<UITableViewDelegate,UITableViewDataSource,UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *ProfileIMG;
@property (weak, nonatomic) IBOutlet UILabel *profileName;
@property (weak, nonatomic) IBOutlet UITextView *profileTEXT;
@property (strong, nonatomic) NSDictionary *tableList1;
@property (strong, nonatomic) NSArray *arrayList;
//3.arraylist property만들고
@property (weak, nonatomic) IBOutlet UITableView *tableViewConnect;
@property (weak, nonatomic) UIView *toolbar;


@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //1. delegate 부터 하고
    self.myTableView.delegate = self;
    self.myTableView.dataSource = self;
    self.profileTEXT.delegate = self;
    
    //2. dictionary로 테이블 리스트 만들고 key값 집어넣고
    NSDictionary *tableList1 = @{@"image":@"smallIMG1",@"name":@"katniss",@"value":@"a lot of coffee, I'm tired :("};
     NSDictionary *tableList2 = @{@"image":@"smallIMG2",@"name":@"minjung",@"value":@"what a night! crazy!"};
    
    //3. 테이블에 들어갈 array list 만들고
    self.arrayList = [[NSArray alloc]initWithObjects:tableList1,tableList2, nil];
    
    //4. 테이블뷰 radius 줌
    self.myTableView.layer.cornerRadius = 8;
    
    //5. profile 이미지 넣기
    self.ProfileIMG.image = [UIImage imageNamed:@"profileIMG"];
    
    self.B1.layer.cornerRadius = 27;
    self.B1.layer.masksToBounds = YES;
    
    self.B2.layer.cornerRadius = 27;
    self.B2.layer.masksToBounds = YES;
    
    self.B3.layer.cornerRadius = 27;
    self.B3.layer.masksToBounds = YES;
    
    self.B4.layer.cornerRadius = 27;
    self.B4.layer.masksToBounds = YES;
    
    
    //uiview 등록
    UIView *toolbar = [[UIView alloc]initWithFrame:CGRectMake(0, self.view.frame.size.height-40, self.view.frame.size.width,50)];
    [toolbar setBackgroundColor:[UIColor blueColor]];
    [self.view addSubview:toolbar];
    self.toolbar =toolbar;
    
    
   //notification center
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(noti:) name:@"notikey" object:@"noti"];
 
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardnoti:) name:UIKeyboardWillShowNotification object:nil];
    
      [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(hidekeyboardnoti:) name:UIKeyboardWillHideNotification object:nil];
}


// noti check 메소드
- (void)noti:(NSNotification*)notisender{
    NSString *notiText = notisender.object;
    NSLog(@" %@ noti check",notisender.object);
}

    //키보드 쓰면 위에 같이 올라오게
- (void)keyboardnoti:(NSNotification*)noti
{
   
    CGSize keyboardSize = [[noti.userInfo objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
    CGRect originFrame = self.toolbar.frame;
 
        //이 안에 바뀔 프레임을 설정
        self.toolbar.frame = CGRectMake(originFrame.origin.x, originFrame.origin.y-keyboardSize.height, originFrame.size.width, originFrame.size.height);
    
}

- (void)hidekeyboardnoti:(NSNotification*)hidenoti
{
    CGSize keyboardsize = [[hidenoti. userInfo objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
    CGRect originframe = self.toolbar.frame;
    self.toolbar.frame = CGRectMake(originframe.origin.x, originframe.origin.y-keyboardsize.height, originframe.size.height, originframe.size.width);
    
   
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}



-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    DataCenter *dataCenter = [DataCenter sharedInstance];
    self.longText.text = dataCenter.friendLB;

}

//1. number of section* 만들고 return
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

//2. number of row* - tablelist 만들고 return
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.arrayList.count;
}

//3. uitableview cell* 만들고
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSLog(@"%ld", indexPath.row);
    //4. dequeue* 하고 identifier*:등록하고
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"hello" forIndexPath:indexPath];

    
    //5.dictionary* -> array*에서 indext.row* 를 등록하고
    NSDictionary *dictemp = [_arrayList objectAtIndex:indexPath.row];
    
    //table cell에 list 넣어주기
    cell.smallText.text = [dictemp objectForKey:@"value"];
    cell.smallIMG.image = [UIImage imageNamed:[dictemp objectForKey:@"image"]];
    cell.smallIMG.image = [UIImage imageNamed:[dictemp objectForKey:@"image"]];
    cell.nameLabel.text = [dictemp objectForKey:@"name"];
    
    self.longText.layer.cornerRadius = 8;
   
    //Scroll view
   
    
    //return cell 끝
     return cell;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
    
    
}
- (IBAction)onEnterBtn:(UIButton *)sender {
    
    
    [ self.profileTEXT resignFirstResponder];
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
