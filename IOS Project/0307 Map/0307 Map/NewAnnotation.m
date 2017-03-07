//
//  NewAnnotation.m
//  0307 Map
//
//  Created by katniss on 2017. 3. 7..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "NewAnnotation.h"

@interface NewAnnotation()



@end

@implementation NewAnnotation

- (instancetype)initWithTitle:(NSString *)title AndCoordinate:(CLLocationCoordinate2D)coordinate
{
    self = [super init];
    if (self) {
        self.title = title;
        self.coordinate = coordinate;
        
    }

    return self;
}




@end
