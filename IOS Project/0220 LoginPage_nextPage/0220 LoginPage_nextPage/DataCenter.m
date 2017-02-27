//
//  DataCenter.m
//  0220 LoginPage_nextPage
//
//  Created by katniss on 2017. 2. 23..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "DataCenter.h"

@implementation DataCenter

+ (instancetype)sharedInstance {

    static DataCenter *datacenter = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        datacenter = [[DataCenter alloc]init];
    });
    return datacenter;
    
}


@end
