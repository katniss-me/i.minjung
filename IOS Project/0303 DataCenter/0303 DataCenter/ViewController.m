//
//  ViewController.m
//  0303 DataCenter
//
//  Created by katniss on 2017. 3. 3..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "ViewController.h"
#import "DataCenter2.h"

@interface ViewController ()
<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) NSArray *dataList2;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataList2 = [[DataCenter2 singletone]loadFriendListVer2];
    

    
    
}

- (void)viewWillAppear:(BOOL)animated
{
    if (self.dataList2.count<[DataCenter2 singletone].friendCount) {
        self.dataList2 = [[DataCenter2 singletone]loadFriendListVer2];
        [self.tableV reloadData];
        
    }
   
  
    
}

//step1
- (UITableViewCell *)


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
   
    cell.textLabel.text = [[self.list objectAtIndex:indexPath.row] objectForKey:@"name"];
    cell.detailTextLabel.text = [[self.list objectAtIndex:indexPath.row] objectForKey:@"phonenumber"];
    
    return cell;
    
    
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.list.count;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
