//
//  AppDelegate.m
//  Sky_FM
//
//  Created by tianfeng pan on 17/3/13.
//  Copyright © 2017年 tianfeng pan. All rights reserved.
//

#import "AppDelegate.h"
#import "SPTabBarController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//0、设置窗口根控制器
    [self setUpRootViewController];
    return YES;
}
#pragma mark- 设置窗口根控制器
-(void)setUpRootViewController{
//    0、创建窗口
    self.window = [[UIWindow alloc] initWithFrame:SP_ScreenBounds];
//    1、设置根控制器
    SPTabBarController *rootVC = [[SPTabBarController alloc] init];
    self.window.rootViewController = rootVC;
//    2、显示窗口
    [self.window makeKeyAndVisible];
}



@end
