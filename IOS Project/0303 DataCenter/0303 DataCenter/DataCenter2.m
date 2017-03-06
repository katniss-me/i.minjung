//
//  DataCenter2.m
//  0303 DataCenter
//
//  Created by katniss on 2017. 3. 3..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "DataCenter2.h"

@implementation DataCenter2


+ (instancetype)singleton
{
    static DataCenter2 *center;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        center = [[DataCenter2 alloc] init];
    });
    
    return center;
    
}

//ver1
- (NSArray*)loadfriendListVer1
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Property List" ofType:@"plist"];
    NSArray *friendList = [NSArray arrayWithContentsOfFile:path];
    return friendList;
    
}


//ver2
- (void)addfriend:(NSString *)name phone:(NSString *)phone
{
    NSArray *paths = 
}
    



@end
