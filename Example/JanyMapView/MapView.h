//
//  MapView.h
//  Example
//
//  Created by Jany on 2017/11/10.
//  Copyright © 2017年 MillionConcept. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {//常规地图、卫星地图、3D地图
    MapNormal,
    MapSatellite,
    Map3D,
} MapDisplayType;

typedef enum : NSUInteger {
    Wgs84,//世界标准地理坐标
    Gcj02,//中国国测局地理坐标（GCJ-02）<火星坐标>
    Bd09,//百度地理坐标（BD-09)
} Coordinate2DType;
@interface MapView : UIView

@end
