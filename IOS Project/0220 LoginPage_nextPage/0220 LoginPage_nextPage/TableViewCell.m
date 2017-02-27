//
//  TableViewCell.m
//  0220 LoginPage_nextPage
//
//  Created by katniss on 2017. 2. 20..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell
@synthesize nameLabel,smallIMG,smallText;

- (void)awakeFromNib {
    [super awakeFromNib];
   
    self.smallIMG.layer.cornerRadius =18;
    self.smallIMG.layer.masksToBounds =YES;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
