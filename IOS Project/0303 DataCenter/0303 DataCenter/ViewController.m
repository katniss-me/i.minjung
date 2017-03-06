//
//  ViewController.m
//  0303 DataCenter
//
//  Created by katniss on 2017. 3. 3..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITableViewDelegate,UITableViewDataSource>
@property NSArray *list;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.tableV.delegate=self;
    self.tableV.dataSource=self;
    
    
    self.dataList = [[Data]]
    
//    NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:@"친구번호리스트"];
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"Property List" ofType:@"plist"];
    self.list = [NSArray arrayWithContentsOfFile:filePath];
    NSLog(@"list %@", self.list);
    

    
    
}

- (void)viewWillAppear:(BOOL)animated
{
    
   
    
    
}




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
