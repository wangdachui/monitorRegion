//
//  NetworkManager.h
//  Region
//
//  Created by 王涛 on 17/4/15.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import "RegionObserveModel.h"

typedef void(^ObjectBlock)(id obj);

@interface NetworkManager : NSObject
- (void)uploadTeacherUnusualAction:(RegionObserveModel *)model;
@end
