//
//  ViewController.m
//  Region
//
//  Created by 王涛 on 17/3/27.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import "ViewController.h"
#import <MapKit/MapKit.h>
#import "AppDelegate.h"
#import "LogTableVC.h"
#import "RegionManager.h"
#import <Foundation/Foundation.h>
#import "UIColor+theme.h"
#import "NetworkManager.h"
#import "JZLocationConverter.h"

#define kCurrentLocation

@interface ViewController ()<MKMapViewDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (weak, nonatomic) IBOutlet UITextField *textFileld;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"老师异常行为检测"];
    [self initMap];
}

- (void)initMap {
    CLLocationCoordinate2D companyCenter;
    companyCenter.latitude = 31.200546;
    companyCenter.longitude = 121.599263;
    //国际标准坐标转换为火星坐标
    CLLocationCoordinate2D gcjPt = [JZLocationConverter wgs84ToGcj02:companyCenter];
    //地图
    MKCoordinateSpan theSpan;
    theSpan.latitudeDelta=0.01;
    theSpan.longitudeDelta=0.01;
    
    //定义一个区域（用定义的经纬度和范围来定义）
    MKCoordinateRegion theRegion;
    theRegion.center=gcjPt;
    theRegion.span=theSpan;
    
    //在地图上显示
    [self.mapView setRegion:theRegion];
    self.mapView.showsUserLocation=YES;
    
    //设置检测区域
    for (StudentInfoModel *student in [RegionManager shareInstance].studentArray) {
        //国际标准坐标转换为火星坐标
        CLLocationCoordinate2D gcjRegionLocation = [JZLocationConverter wgs84ToGcj02:student.location];
        MKCircle *circle =[MKCircle circleWithCenterCoordinate:gcjRegionLocation radius:kRegionRadius];
        //先添加，在回调方法中创建覆盖物
        [_mapView addOverlay:circle];
    }
    
    
    //为地图增加点击方法
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(mTapPress:)];
    [self.mapView addGestureRecognizer:tap];

}

- (IBAction)logAction:(id)sender {
    UIViewController *vc = [[LogTableVC alloc] initWithStyle:UITableViewStyleGrouped];
    [self.navigationController pushViewController:vc animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - MKMapViewDelegate

- (MKOverlayRenderer *)mapView:(MKMapView *)mapView rendererForOverlay:(id<MKOverlay>)overlay {
    //创建圆形覆盖物
    MKCircleRenderer *circleRender =[[MKCircleRenderer alloc] initWithCircle:overlay];
    
    //设置填充色
    circleRender.fillColor=[UIColor colorWithWhite:0.8 alpha:0.8];
    
    //设置边缘颜色
    circleRender.strokeColor=[UIColor stBlueColor];
    
    //设置边缘宽度
    circleRender.lineWidth = 2;
    
    return circleRender;
}

//点击地图事件
- (void)mTapPress:(UIGestureRecognizer*)gestureRecognizer {
    
    CGPoint touchPoint = [gestureRecognizer locationInView:self.mapView];//这里touchPoint是点击的某点在地图控件中的位置
    CLLocationCoordinate2D touchMapCoordinate =
    [self.mapView convertPoint:touchPoint toCoordinateFromView:self.mapView];//这里touchMapCoordinate就是该点的经纬度了
    //国际标准坐标转换为火星坐标
//    CLLocationCoordinate2D gcjPt = [JZLocationConverter wgs84ToGcj02:touchMapCoordinate];÷
    NSLog(@"touching %f,%f",touchMapCoordinate.latitude,touchMapCoordinate.longitude);
    
}

@end
