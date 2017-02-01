//
//  Carculator.h
//  0201_Carculator2
//
//  Created by katniss on 2017. 2. 1..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Carculator : NSObject

- (NSInteger)absoluteNum:(NSInteger)a1;

- (void)round3Num:(CGFloat)num;

- (void)getMultipleicationTable:(NSInteger)dan;

+ (NSString*)findMultipleNum:(NSInteger)multiple maxRange:(NSInteger)range;

+ (void)gogodan:(NSInteger)dan2;

+ (void)factorialSolution:(NSInteger)f1;


@end
