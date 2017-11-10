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
        [_myMap setMapType:kGMSTypeNormal];
        [_myMap setMinZoom:0.f maxZoom:100.f];
    }
    return _myMap;
}
@end
