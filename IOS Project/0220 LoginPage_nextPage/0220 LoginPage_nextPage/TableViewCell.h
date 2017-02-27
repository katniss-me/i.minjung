//
//  TableViewCell.h
//  0220 LoginPage_nextPage
//
//  Created by katniss on 2017. 2. 20..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *smallIMG;
@property (weak, nonatomic) IBOutlet UILabel *smallText;

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;



@end
