//
//  MasterViewController.m
//  0216 CostomTableView
//
//  Created by katniss on 2017. 2. 16..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "MasterViewController.h"
#import "CustomCell.h"
#import "DetailUIViewController.h"

@interface MasterViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic) NSArray *dataList;


@end

@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDictionary *pic1 = @{@"name":@"kamilla",@"img":@"1",@"value":@"\"hello, my name is kamilla\"",@"amount":@"designer"};
    NSDictionary *pic2 = @{@"name":@"emma",@"img":@"2",@"value":@"\"hello, my name is emma. nice to meet u.\"",@"amount":@"developer"};
    NSDictionary *pic3 = @{@"name":@"matilda",@"img":@"3",@"value":@"\"can you hear me?\"",@"amount":@"fashion designer"};
    NSDictionary *pic4 = @{@"name":@"ujua",@"img":@"4",@"value":@"\"hi hi :) good morining!\"",@"amount":@"graphic designer"};
    NSDictionary *pic5 = @{@"name":@"hera",@"img":@"5",@"value":@"\"oki doki\"",@"amount":@"student"};
    NSDictionary *pic6 = @{@"name":@"katniss",@"img":@"6",@"value":@"\"I'm the queen in the world!\"",@"amount":@"ios developer"};
    
    
    //섹션
    
    
    //array등록
    self.dataList = [[NSArray alloc] initWithObjects:pic1,pic2,pic3,pic4,pic5,pic6, nil];
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _dataList.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"hello" forIndexPath:indexPath];
    
    if (cell == nil) {
        cell = [[CustomCell alloc] initWithStyle:UITableViewCellStyleSubtitle
                                 reuseIdentifier:@"hello"];
        
    }
    NSDictionary *dicTemp = [_dataList objectAtIndex:indexPath.row];
    cell.nameLabel.text = [dicTemp objectForKey:@"name"];
    cell.amountLabel.text = [dicTemp objectForKey:@"amount"];
    cell.valueLabel.text = [dicTemp objectForKey:@"value"];
    cell.imgLabel.image = [UIImage imageNamed:[dicTemp objectForKey:@"img"]];
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
         NSIndexPath *indexPath =[self.tableView indexPathForSelectedRow];
        [segue destinationViewController];
    }
    
}
    


@end






/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

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


