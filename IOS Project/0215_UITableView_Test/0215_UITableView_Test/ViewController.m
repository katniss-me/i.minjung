//
//  ViewController.m
//  0215_UITableView_Test
//
//  Created by katniss on 2017. 2. 15..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController ()
<UITableViewDelegate,UITableViewDataSource>


@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic) NSArray *animals;
@property (nonatomic) NSArray *animals2;
@property (nonatomic) NSArray *section;

@end
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
//    UIScrollView *scr = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 20, 300, 500)];
//    [scr setContentSize:CGSizeMake(300,500*2)];
//    scr.delegate = self;
// 
    
    
    //tableview 등록
    self.tableView.frame = CGRectMake(0, 0, self.view.frame.size.width , self.view.frame.size.height);
    self.tableView.delegate=self;
    self.tableView.dataSource=self;
    [self.view addSubview:self.tableView];
                      
                      
    //dictionary 등록
    NSDictionary *animal = @{@"name":@"dog",@"image":@"dog.jpg"};
    NSDictionary *animal2 = @{@"name":@"whale",@"image":@"whale.jpg"};
    NSDictionary *animal3 = @{@"name":@"giraffe",@"image":@"giraffe.jpg"};
    NSDictionary *animal4 = @{@"name":@"horse",@"image":@"horse.jpg"};
    NSDictionary *animal5 = @{@"name":@"bear",@"image":@"bear.jpg"};
    NSDictionary *animal6 = @{@"name":@"peacock",@"image":@"peacock.jpg"};
    
    //dictionary2 등록
    NSDictionary *animal7 = @{@"name":@"emu",@"image":@"emu.jpg"};
    NSDictionary *animal8 = @{@"name":@"koala",@"image":@"koala.jpg"};
    NSDictionary *animal9 = @{@"name":@"elephant",@"image":@"elephant.jpg"};
    NSDictionary *animal10 = @{@"name":@"panda",@"image":@"panda.jpg"};
    NSDictionary *animal11 = @{@"name":@"buffalo",@"image":@"buffalo.jpg"};
    NSDictionary *animal12 = @{@"name":@"donkey",@"image":@"donkey.jpg"};
    
    
    //섹션
    self.section = @[@"서울랜드",@"에버랜드"];
    
    
    
    //array 등록
    self.animals = @[animal,animal2,animal3,animal4,animal5,animal6];
    self.animals2 = @[animal7,animal8,animal9,animal10,animal11,animal12];
    
 
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    

}
//1. 테이블 뷰 만들기 - numberofrowinsection -section
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.animals.count;
}

//1-1.테이블 뷰 만들기 - didselect..path -indexpath
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//    NSLog(@"selected row: %ld",indexPath.row);
//    
//선택된 cell
//    UITableViewCell *selectedCell = [tableView cellForRowAtIndexPath:indexPath];
//  

    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    
    
    
}



//2. 섹션의 갯수를 몇개로 할꺼냐.. number - tableview
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.section.count;
    //count :배열의 갯수
    
}
//3. 섹션의 헤더 titleforheader - section
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
 //0번 타이틀
    switch (section) {
        case 0:
            return self.section[0];
            break;
        case 1:
            return self.section[1];
        default:
            return @"";
            break;
    }
}






 //4. 셀 만들기 cellfor - indexpath
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
  {
      UITableViewCell *newCell = [tableView dequeueReusableCellWithIdentifier:@"j" forIndexPath:indexPath];
  //재사용
//    if (newCell == nil) {
//        newCell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"j"];
//    
//    }
      //악세서리 타입 : uitableviewcell악세서리 타입
      newCell.accessoryType =  UITableViewCellAccessoryDisclosureIndicator ;
      
      //ui이미지 섹션별 글씨와 이미지 넣어주기
      UIImage *img;
        switch (indexPath.section) {
          case 0:
              newCell.textLabel.text = [self.animals[indexPath.row] objectForKey:@"name"];
              img = [UIImage imageNamed:[self.animals[indexPath.row] objectForKey:@"image"]];
              newCell.imageView.image = img;
              break;
          case 1:
              newCell.textLabel.text = [self.animals2[indexPath.row] objectForKey:@"name"];
              img = [UIImage imageNamed:[self.animals2[indexPath.row] objectForKey:@"image"]];
              newCell.imageView.image = img;
            
          default:
              break;
      }

      
      return newCell;
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showDetail"]) {
        DetailViewController *detailView = segue.destinationViewController;
        NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
        detailView.title = @"강아지";
    }
}
@end
