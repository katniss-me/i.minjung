//
//  CustomCell.m
//  0216 CostomTableView
//
//  Created by katniss on 2017. 2. 17..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.imgLabel.layer.cornerRadius =50;
    self.imgLabel.layer.masksToBounds =YES;
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
