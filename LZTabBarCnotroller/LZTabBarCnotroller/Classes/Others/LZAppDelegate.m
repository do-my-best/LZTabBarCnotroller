//
//  LZAppDelegate.m
//  LZTabBarCnotroller
//
//  Created by liuzhu on 15/11/22.
//  Copyright © 2015年 liuzhu. All rights reserved.
//

#import "LZAppDelegate.h"
#import "LZTabBarController.h"

@implementation LZAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    
    //1.创建窗口
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen]. bounds];
    
    //2.设置窗口的根控制器
    LZTabBarController *tabBarVC = [[LZTabBarController alloc]init];
    self.window.rootViewController = tabBarVC;
    
    //3.设置窗口显示
    [self.window makeKeyAndVisible];

    return  YES;
}
@end
