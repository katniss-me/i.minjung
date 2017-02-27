//
//  SettingViewController.m
//  0220 LoginPage_nextPage
//
//  Created by katniss on 2017. 2. 23..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "SettingViewController.h"
#import "SettingTableViewCell.h"
#import "DataCenter.h"

@interface SettingViewController ()
<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *settingTable;
@property (strong, nonatomic) NSArray *autoArray;
@property (strong, nonatomic) NSArray *rejectedArray;
@property (strong, nonatomic) NSArray *fundedArray;
@property (strong, nonatomic) NSArray *manageFriendArray;

@property (strong, nonatomic) NSArray *section;

@end

@implementation SettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.settingTable.delegate =self;
    self.settingTable.dataSource =self;
    
    
    //3. 테이블에 들어갈 array list 만들고
    NSArray *section = @[@"first",@"second",@"third"];
    self.autoArray = @[@"자동 친구 추가"];
    self.rejectedArray = @[@"친구 삭제하기"];
    self.fundedArray = @[@"친구 이름 동기화"];
    self.manageFriendArray = @[@"숨김친구 관리"];
    
    DataCenter *datacenter = [[DataCenter alloc] init];
    
    //4. 테이블뷰 radius 줌
    self.settingTable.layer.cornerRadius = 8;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


//1. number of section* 만들고 return
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 6;
}

//1. uitableview cell* 만들고
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //2.log를 row만큼 찍어줌
    NSLog(@"%ld", indexPath.row);
    
    //3. dequeue* 하고 identifier*:등록하고
    SettingTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell2" forIndexPath:indexPath];
    
    
    if(cell == nil){
        cell = [[SettingTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell2"];
    }
    NSLog(@"%ld", indexPath.section);
    NSLog(@"%ld", indexPath.row);
    switch (indexPath.section) {
        case 0:
            if(indexPath.row == 0){
                [cell.swi1 addTarget:self action:@selector(onOff:) forControlEvents:UIControlEventValueChanged];
            }
            cell.field1.text = self.autoArray[indexPath.row];
            
            break;
        case 1:
            cell.field1.text = self.rejectedArray[indexPath.row];

            break;
        case 2:
            cell.field1.text = self.fundedArray[indexPath.row];
            break;
        case 3:
            cell.field1.hidden = YES;
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            cell.field1.text = self.manageFriendArray[indexPath.row];
            break;
        default:
            break;
    }
    
    //return cell 끝
    return cell;
}


// section header title 설정하기
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    switch (section) {
        case 1:
            return @"내 연락처에서 카카오톡을 사용하는 친구를 자동으로 친구목록에 추가합니다.수동으로 추가하려면 새로고침 버튼을 눌러주세요 ";
            break;
        case 2:
            return @"알 수도 있는 친구를 추천받고, 나를 다른사람에게 추천해 줍니다. ";
            break;
        case 3:
            return @"친구 관리";
            break;
        case 4:
            return @"카카오톡 앱의 친구 이름을 PC버전, 카카오 게임에서도 동일하게 보여줍니다.";
            break;
        default:
            return @" ";

            break;
    }
}

//헤더 section height 조절
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    
    switch (section) {
        case 0:
            return 0;
            break;
        case 1:
            return 50;
            break;
        case 2:
            return 30;
            break;
        case 3:
            return 10;
            break;
        default:
            return 30;
            break;
    }
    
}

// section row의 갯수
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    NSLog(@"number : %ld", section);
    
    switch (section) {
        case 0:
            return self.autoArray.count;
            break;
        case 1:
            return self.rejectedArray.count;
            break;
        case 2:
            return self.fundedArray.count;
            break;
        case 3:
            return self.manageFriendArray.count;
            break;
        default:
            return 0;
            break;
            
    }
    
}

-(void)onOff:(UISwitch *)sender{
    NSLog(@"스위치가 변경됐습니다");
    DataCenter *dataCenter = [DataCenter sharedInstance];
    dataCenter.friendLB = @"자동친구 추가 스위치가 꺼졌습니다.";
    
    //notification 만듬
    [[NSNotificationCenter defaultCenter] postNotificationName:@"notikey" object:@"noti"];
}



- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:@"notikey"];
}

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end

