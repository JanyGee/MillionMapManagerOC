//
//  MapView.m
//  Example
//
//  Created by Jany on 2017/11/10.
//  Copyright © 2017年 MillionConcept. All rights reserved.
//

#import "MapView.h"
#import <GoogleMaps/GoogleMaps.h>
#import <GoogleMaps/GMSMarker.h>
#import <GoogleMaps/GMSPolyline.h>

@interface MapView()<GMSMapViewDelegate>
{
    CLLocationCoordinate2D _devicePosition;
}
@property (nonatomic, strong)GMSMapView *myMap;
@end
@implementation MapView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.myMap];
    }
    return self;
}

#pragma mark==================================setupMap==================================
- (GMSMapView *)myMap
{
    if (!_myMap) {
        _myMap = [[GMSMapView alloc]initWithFrame:self.bounds];
        [_myMap setDelegate:self];
        
        [_myMap addObserver:self
                 forKeyPath:@"myLocation"
                    options:NSKeyValueObservingOptionNew
                    context:NULL];
        _myMap.myLocationEnabled = YES;
    }
    return _myMap;
}

#pragma mark ============================== KVO updates ==============================
- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary *)change
                       context:(void *)context {


        CLLocation *location = [change objectForKey:NSKeyValueChangeNewKey];
        _devicePosition = location.coordinate;

        _myMap.camera = [GMSCameraPosition cameraWithTarget:_devicePosition
                                                       zoom:14];
    
    
    NSLog(@"%@",NSStringFromCGPoint(CGPointMake(_devicePosition.latitude, _devicePosition.longitude)));
}

- (void)dealloc
{
    [_myMap removeObserver:self
                forKeyPath:@"myLocation"
                   context:NULL];
}
@end
