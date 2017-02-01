//
//  Student.h
//  Fast4f
//
//  Created by katniss on 2017. 1. 19..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObjectiveClass.h"


@interface Student : ObjectiveClass


@property NSString *studentName;
@property NSInteger brain;
@property NSInteger typeWrighter;


- (id)study;
- (id)typeWrightTo;



@end
