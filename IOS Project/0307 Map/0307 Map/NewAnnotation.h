//
//  NewAnnotation.h
//  0307 Map
//
//  Created by katniss on 2017. 3. 7..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface NewAnnotation : NSObject
<MKAnnotation>

@property (nonatomic, readwrite) CLLocationCoordinate2D coordinate;
@property (nonatomic,copy) NSString *title;

- (instancetype)initWithTitle:(NSString*)title AndCoordinate:(CLLocationCoordinate2D)coordinate;


@end

