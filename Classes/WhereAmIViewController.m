//
//  WhereAmIViewController.m
//  WhereAmI
//
//  Created by Charlie Key on 8/18/09.
//  Copyright Paranoid Ferret Productions 2009. All rights reserved.
//

#import "WhereAmIViewController.h"

@implementation WhereAmIViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  locationManager = [[CLLocationManager alloc] init];
  locationManager.delegate = self;
  locationManager.distanceFilter = kCLDistanceFilterNone; // whenever we move
  locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters; // 100 m
  [locationManager startUpdatingLocation];
}

- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation
{
  int degrees = newLocation.coordinate.latitude;
  double decimal = fabs(newLocation.coordinate.latitude - degrees);
  int minutes = decimal * 60;
  double seconds = decimal * 3600 - minutes * 60;
  NSString *lat = [NSString stringWithFormat:@"%d° %d' %1.4f\"", degrees, minutes, seconds];
  
  latLabel.text = lat;
  degrees = newLocation.coordinate.longitude;
  decimal = fabs(newLocation.coordinate.longitude - degrees);
  minutes = decimal * 60;
  seconds = decimal * 3600 - minutes * 60;
  NSString *longt = [NSString stringWithFormat:@"%d° %d' %1.4f\"", degrees, minutes, seconds];
  longLabel.text = longt;
    
    //verificar a latitude e longitude
    NSLog(@"lat: %d° %d' %1.4f | long: %d° %d' %1.4f",degrees, minutes, seconds,degrees, minutes, seconds);
    
}

- (void)dealloc {
  [locationManager release];
  [super dealloc];
}

@end
