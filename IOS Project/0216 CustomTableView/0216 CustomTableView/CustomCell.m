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
    self.imgLabel.layer.cornerRadius =45;
    self.imgLabel.layer.masksToBounds =YES;
    //YES를 하면 뷰 경계 밖의 내용을 표시하지 않는다. 이는 UIView의 clipToBounds와 동일하다
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
