//
//  Star.m
//  0202_StarLog
//
//  Created by katniss on 2017. 2. 2..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "Star.h"

@implementation Star

+(void)star:(NSInteger)s
{
    NSInteger result=0;
    for (NSInteger i=1; i<=s; i++){
       
        result=i;
        NSLog(@"%ld",result);

    }

}

+(void)getNum:(NSInteger)s
{
    NSInteger result=10;
    for (NSInteger i=10; i<=s; i--){
        
        result=i;
        NSLog(@"%ld",result);
        
    }
    
}




@end
