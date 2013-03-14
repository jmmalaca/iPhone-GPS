//
//  WhereAmIViewController.h
//  WhereAmI
//
//  Created by Charlie Key on 8/18/09.
//  Copyright Paranoid Ferret Productions 2009. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface WhereAmIViewController : UIViewController <CLLocationManagerDelegate>{
  CLLocationManager *locationManager;
  IBOutlet UILabel *latLabel;
  IBOutlet UILabel *longLabel;
}

@end

