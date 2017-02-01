//
//  NewCarculator.m
//  0125_NewCalculator
//
//  Created by katniss on 2017. 1. 25..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "NewCarculator.h"


@interface NewCarculator ()
@property NSInteger returnVal;
@property NSMutableArray *oper;
- (NSInteger)getReturnVal;
@end


@implementation NewCarculator

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.returnVal = 0;
        self.oper = [[NSMutableArray alloc] init];
    }
    return self;

}
- (void)operatorInput:(NSString *)oper{
    [self.oper addObject:oper];
    if([oper isEqualToString:@"="]){
        NSLog(@"계산된 값은 %ld입니다.",self.returnVal);
    }
}

- (NSString *)operatorGet{
        return [self.oper objectAtIndex:[self.oper count]-1];
}

- (void)inputNum:(NSInteger)num{
    if([self.oper count]==0) {
        NSLog(@"연산자가 들어있지 않습니다.");
              self.returnVal = num;
    }
    else {
        if([[self operatorGet] isEqualToString:@"+"]){
        NSLog(@"연산을 실행합니다 %ld + %ld = %ld ->", self.returnVal, num, self.)
        }
    }
              
    
}



@end
