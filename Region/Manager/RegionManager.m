//
//  RegionManager.m
//  Region
//
//  Created by 王涛 on 17/3/27.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import "RegionManager.h"
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "NetworkManager.h"

#define kObserveStudentNum 20

@interface RegionManager ()<CLLocationManagerDelegate>
@property (strong, nonatomic) CLRegion* oldRegion;
@end

@implementation RegionManager

+ (instancetype)shareInstance {
    static RegionManager* manager = nil;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        manager = [[RegionManager alloc] init];
    });
    return manager;
}

-(CLLocationManager *)locationM
{
    if (!_locationM) {
        _locationM = [[CLLocationManager alloc] init];
        _locationM.delegate = self;
        _locationM.desiredAccuracy = kCLLocationAccuracyBest;
        _locationM.distanceFilter = 10;
        // 主动请求定位授权
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 80000
        [_locationM requestAlwaysAuthorization];
#endif
        //这是iOS9中针对后台定位推出的新属性 不设置的话 可是会出现顶部蓝条的哦(类似热点连接)
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 90000
        [_locationM setAllowsBackgroundLocationUpdates:YES];
#endif
        
        _locationM.pausesLocationUpdatesAutomatically = NO;
    }
    return _locationM;
}

- (void)starMonitorRegion {
    //监听最近联系的20个家长 测试数据
    for (int i = 0; i < kObserveStudentNum ; i++) {
        StudentInfoModel *student = [[StudentInfoModel alloc] init];
        CLLocationCoordinate2D companyCenter;
        companyCenter.latitude = 31.200546;
        companyCenter.longitude = 121.599263 + i*0.005;
        student.location = companyCenter;
        student.qingqingUserId = [NSString stringWithFormat:@"%d",i*1000];
        [self.studentArray addObject:student];
        [self regionObserve:student];
    }
    
}

- (void)regionObserve:(StudentInfoModel *)student {
    if([CLLocationManager locationServicesEnabled]) {
        
        // 定义一个CLLocationCoordinate2D作为区域的圆
        // 使用CLCircularRegion创建一个圆形区域，
        // 确定区域半径
        CLLocationDistance radius = kRegionRadius;
        // 使用前必须判定当前的监听区域半径是否大于最大可被监听的区域半径
        if(radius > self.locationM.maximumRegionMonitoringDistance) {
            radius = self.locationM.maximumRegionMonitoringDistance;
        }
        CLRegion* fkit = [[CLCircularRegion alloc] initWithCenter:student.location
                                                           radius:radius identifier:student.qingqingUserId];
        // 开始监听fkit区域
        [self.locationM startMonitoringForRegion:fkit];
        // 请求区域状态(如果发生了进入或者离开区域的动作也会调用对应的代理方法)
        [self.locationM requestStateForRegion:fkit];
        
    } else {
        
        // 使用警告框提醒用户
        [[[UIAlertView alloc] initWithTitle:@"提醒"
                                    message:@"您的设备不支持定位" delegate:self
                          cancelButtonTitle:@"确定" otherButtonTitles: nil] show];
        
        
        
    }
}

#pragma mark - CLLocationManagerDelegate

- (void)locationManager:(CLLocationManager *)manager
     didUpdateLocations:(NSArray *)locations
{
    // 1.获取用户位置的对象
    CLLocation *location = [locations lastObject];
    CLLocationCoordinate2D coordinate = location.coordinate;
    NSLog(@"纬度:%f 经度:%f", coordinate.latitude, coordinate.longitude);
    self.currentLocation = location;
}

// 进入指定区域以后将弹出提示框提示用户

-(void)locationManager:(CLLocationManager *)manager
        didEnterRegion:(CLRegion *)region {
    NSString *message;
    for (StudentInfoModel *student in self.studentArray) {
        
        if ([region.identifier isEqualToString:student.qingqingUserId]) {
            message = [NSString stringWithFormat:@"进入轻轻家教第%d中心区域",[student.qingqingUserId intValue]/1000+1];
        }
    }
    [[[UIAlertView alloc] initWithTitle:@"区域检测提示"
                                message:message delegate:nil
                      cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
    [self saveMessage:message];
    // 进入区域，则需要收集一份数据，上传后端
    self.model = [[RegionObserveModel alloc] init];
    self.model.enterTime = [[NSDate date] timeIntervalSince1970];
    for (StudentInfoModel *student in self.studentArray) {
        if ([region.identifier isEqualToString:student.qingqingUserId]) {
            self.model.student = student;
        }
    }
    [self uploadMessage];
}

// 离开指定区域以后将弹出提示框提示用户

-(void)locationManager:(CLLocationManager *)manager
         didExitRegion:(CLRegion *)region {
    NSString *message;
    for (StudentInfoModel *student in self.studentArray) {
        if ([region.identifier isEqualToString:student.qingqingUserId]) {
            message = [NSString stringWithFormat:@"离开轻轻家教第%d中心区域",[student.qingqingUserId intValue]/1000+1];
        }
    }
    [[[UIAlertView alloc] initWithTitle:@"区域检测提示"
      
                                message:message delegate:nil
      
                      cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
    [self saveMessage:message];
    
    //如果之前进入过区域，则记录出区域时间。和上课时间做比较，如果是非上课时间停留家长家，则视为异常，上报后端
    if (self.model) {
        self.model.outTime = [[NSDate date] timeIntervalSince1970];
        [self uploadMessage];
    }
}

/**
 *  监听区域失败时调用
 *
 *  @param manager 位置管理者
 *  @param region  区域
 *  @param error   错误
 */
-(void)locationManager:(CLLocationManager *)manager monitoringDidFailForRegion:(CLRegion *)region withError:(NSError *)error
{

    
}

#pragma mark - Tool

- (void)uploadMessage {
    // 上传逻辑 非上课时间停留且超过45分钟,当天和该家长没课，或者有课却在上课时间之外都视为非上课时间
    if (self.model.student.startTime <= 0 ||
        (self.model.enterTime<(self.model.student.startTime-45*60)
         &&self.model.outTime > (self.model.student.endTime + 45*60))) {
        //上传异常数据
            [[[NetworkManager alloc] init] uploadTeacherUnusualAction:self.model];
    }
    
}

- (void)saveMessage:(NSString *)title {
    if (title.length > 0) {
        NSArray *logArray = [[NSUserDefaults standardUserDefaults] objectForKey:kDataKey];
        NSMutableArray *chatRoomLectureMutableArray = [NSMutableArray arrayWithArray:logArray];
        
        [chatRoomLectureMutableArray addObject:title];
        [[NSUserDefaults standardUserDefaults] setObject:chatRoomLectureMutableArray forKey:kDataKey];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
}

- (NSMutableArray *)studentArray {
    if (!_studentArray) {
        _studentArray = [NSMutableArray array];
    }
    return _studentArray;
}

@end
