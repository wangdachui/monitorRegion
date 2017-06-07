//
//  RegionManager.h
//  Region
//
//  Created by 王涛 on 17/3/27.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import "RegionObserveModel.h"

#define kRegionRadius 100
#define kDataKey @"dataKey"
#define kNotificationForLocation @"notificationForLocation"

@interface RegionManager : NSObject

@property (strong, nonatomic) NSMutableArray *studentArray;
@property (strong, nonatomic) RegionObserveModel *model;
@property (retain,nonatomic) CLLocationManager *locationM;
@property(strong, nonatomic) CLLocation *currentLocation;

- (void)starMonitorRegion;

+ (instancetype)shareInstance;
- (void)saveMessage:(NSString *)title;
@end
