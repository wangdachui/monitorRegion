//
//  StudentInfoModel.h
//  Region
//
//  Created by 王涛 on 17/4/15.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface StudentInfoModel : NSObject

@property (strong, nonatomic) NSString *qingqingUserId;
@property (strong, nonatomic) NSString *nick;
@property (assign, nonatomic) long long startTime;  //和该老师在当天的课程的开始时间
@property (assign, nonatomic) long long endTime;    //和该老师在当天的课程的结束时间
@property (assign, nonatomic) CLLocationCoordinate2D location;

@end
