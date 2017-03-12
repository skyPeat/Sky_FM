//
//  SPTabBarController.m
//  Sky_FM
//
//  Created by tianfeng pan on 17/3/13.
//  Copyright © 2017年 tianfeng pan. All rights reserved.
//

#import "SPTabBarController.h"
#import "SPNavigationController.h"
#import "Testvc.h"
#import "Test1.h"
@interface SPTabBarController ()

@end

@implementation SPTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
//    0、添加子控制器
    [self addchildViewControllers];
}
#pragma mark- 添加子控制器
-(void)addchildViewControllers{
    [self childViewController:[[Testvc alloc] init]  normalImageName:@"tabbar_find_n" selectedImageName:@"tabbar_find_h"];
[self childViewController:[[Test1 alloc] init]  normalImageName:@"tabbar_sound_n" selectedImageName:@"tabbar_sound_h"];
    [self childViewController:[[UIViewController alloc] init]  normalImageName:@"tabbar_download_n" selectedImageName:@"tabbar_download_h"];
[self childViewController:[[UIViewController alloc] init]  normalImageName:@"tabbar_me_n" selectedImageName:@"tabbar_me_h"];

}
-(void)childViewController:(UIViewController *)viewController  normalImageName:(NSString *)normalImageName selectedImageName:(NSString *)selectedImageName{
    viewController.tabBarItem.image = [UIImage imageNamedWithRenderImageName:normalImageName];
    viewController.tabBarItem.selectedImage = [UIImage imageNamedWithRenderImageName:selectedImageName];
    SPNavigationController *nav = [[SPNavigationController alloc] initWithRootViewController:viewController];
    [self addChildViewController:nav];

}
@end
