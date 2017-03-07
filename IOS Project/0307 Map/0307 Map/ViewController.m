//
//  ViewController.m
//  0307 Map
//
//  Created by katniss on 2017. 3. 7..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "ViewController.h" //파일 하나
#import <MapKit/MapKit.h> //프레임워크
#import <CoreLocation/CoreLocation.h>//코어로케이션 , 내 위치


static const CGFloat BASE_LATITUDE = 37.767690;
static const CGFloat BASE_LONGITUDE = -122.431238;





@interface ViewController ()

<CLLocationManagerDelegate,MKMapViewDelegate,MKAnnotation>


@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property CLLocationManager *locationManager;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _locationManager = [[CLLocationManager alloc] init];
    _locationManager.delegate = self;
    
    _locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    [_locationManager requestWhenInUseAuthorization];
    [_locationManager startUpdatingLocation];
    
    self.mapView.delegate = self;
    [self.mapView setShowsUserLocation:YES];
    
}

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation
{
    
    static NSString *const kPinAnnotationIdentifier = @"pin";
    
    MKAnnotationView *newanno = (MKAnnotationView*)[self.mapView dequeueReusableAnnotationViewWithIdentifier:kPinAnnotationIdentifier];
    
    if (newanno == nil) {
        newanno = [[MKAnnotationView alloc]
                   initWithAnnotation:annotation reuseIdentifier:kPinAnnotationIdentifier];

        
        
        return annotation;
    

  
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations
{
    
    CLLocationCoordinate2D cordinate = CLLocationCoordinate2DMake(locations.lastObject.coordinate.latitude, locations.lastObject.coordinate.longitude);
    MKCoordinateSpan span = MKCoordinateSpanMake(0.01, 0.01);
    
    MKCoordinateRegion region = MKCoordinateRegionMake(cordinate, span);
    [self.mapView setRegion:region];

    [manager stopUpdatingLocation];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
