//
//  DetailUIViewController.h
//  0216 CostomTableView
//
//  Created by katniss on 2017. 2. 16..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailUIViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *ImgView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *amountLabel;
@property (weak, nonatomic) IBOutlet UILabel *valueLabel;

@property (weak,nonatomic) NSDictionary *detailData;

@end
