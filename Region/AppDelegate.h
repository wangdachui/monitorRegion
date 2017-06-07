//
//  AppDelegate.h
//  Region
//
//  Created by 王涛 on 17/3/27.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RegionManager.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, strong) RegionManager *regionManager;
+ (AppDelegate *)sharedAppDelegate;

@end

