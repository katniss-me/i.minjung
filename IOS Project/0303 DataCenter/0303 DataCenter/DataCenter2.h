//
//  DataCenter2.h
//  0303 DataCenter
//
//  Created by katniss on 2017. 3. 3..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCenter2 : NSObject

@property (nonatomic) NSInteger *friendCount;

+ (instancetype)singletone;

- (NSArray*)loadfriendListVer1;

- (void)addfriend:(NSString*)name phone:(NSString*)phone;
- (NSArray*)loadFriendListVer2;


@end
