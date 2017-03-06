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
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
   //document directory base
    NSString *basePath = [paths objectAtIndex:0];
    
    //file path
    NSString *docuPath = [basePath stringByAppendingPathComponent:@"Property List"];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    if (![fileManager fileExistsAtPath:docuPath]) {
        NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"Property List" ofType:@"plist"];
        [fileManager copyItemAtPath:bundlePath toPath:docuPath error:nil];
        
    }
    //nsmutablearray
    NSMutableArray *friendList = [NSMutableArray arrayWithContentsOfFile:docuPath];
    NSDictionary *dic = @{@"name":name,@"phone":phone};
    [friendList addObject:dic];
    
    
    //저장
    [friendList writeToFile:docuPath atomically:NO];
    self.friendCount++;
    
}
    
- (NSArray *)loadFriendListVer2
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    //Documants directory base
    NSString *basePath = [paths objectAtIndex:0];
    //file path
    NSString *docuPath = [basePath stringByAppendingPathComponent:@"Property List.plist"];
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if (![fileManager fileExistsAtPath:docuPath])
    {
        NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"Property List" ofType:@"plist"];
        [fileManager copyItemAtPath:bundlePath toPath:docuPath error:nil];
    }
    NSMutableArray *friendList = [NSMutableArray arrayWithContentsOfFile:docuPath];
    self.friendCount = friendList.count;
    return friendList;
    
}


@end
