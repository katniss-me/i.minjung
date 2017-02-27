//
//  DetailUIViewController.m
//  0216 CostomTableView
//
//  Created by katniss on 2017. 2. 16..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "DetailUIViewController.h"


@implementation DetailUIViewController

@synthesize nameLabel,amountLabel,valueLabel,ImgView,detailData;

-(void)viewDidLoad{
    [super viewDidLoad];
    NSLog(@"%@",detailData);
    
    nameLabel.text = [detailData objectForKey:@"name"];
    valueLabel.text = [detailData objectForKey:@"value"];
    amountLabel.text = [detailData objectForKey:@"amount"];
    ImgView.image = [UIImage imageNamed:[detailData objectForKey:@"img"]];
    
    
}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}



@end
