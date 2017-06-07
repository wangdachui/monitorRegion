//
//  RegionObserveModel.h
//  Region
//
//  Created by 王涛 on 17/4/15.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StudentInfoModel.h"

@interface RegionObserveModel : NSObject

@property (strong, nonatomic) StudentInfoModel *student;
@property (assign, nonatomic) NSTimeInterval enterTime;
@property (assign, nonatomic) NSTimeInterval outTime;

@end
