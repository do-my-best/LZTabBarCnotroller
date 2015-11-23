//
//  LZTabBarController.m
//  LZTabBarCnotroller
//
//  Created by liuzhu on 15/11/22.
//  Copyright © 2015年 liuzhu. All rights reserved.
//

#import "LZTabBarController.h"
#import "UIImage+OriginalImage.h"
#import "LZNavigationController.h"
#import "LZMyPreferenceTVC.h"

@interface LZTabBarController ()

/// 保存 tabbar 底部文字的数组
@property (nonatomic,strong) NSArray *tabBarTitleList;

/// 保存 tabbar 底部图片的数组
@property (nonatomic,strong) NSArray *tabBarImageList;

/// 保存 tabbar 底部被选中的图片的数组
@property (nonatomic,strong) NSArray *tabBarImageSelectedList;

/// 保存类
@property (nonatomic,strong)NSArray *indexes;
@end

@implementation LZTabBarController

+(void)initialize{

//    [super initialize];
    
    UITabBar *tabBar = [UITabBar appearance];
    tabBar.tintColor = kMainColor;
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableArray *arrM = [NSMutableArray arrayWithCapacity:10];
    
    //遍历控制器
   [self.tabBarTitleList enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
       
       //设置每一个子控制器
       UIViewController *vc = self.indexes[idx] ;
       
       if( idx == 3){
       
           vc.view.backgroundColor = [UIColor colorWithRed:0.95 green:0.95 blue:0.95 alpha:1.0];
       }else{
       
           vc.view.backgroundColor = [UIColor whiteColor];
       }
       
       LZNavigationController *nav = [[LZNavigationController alloc]initWithRootViewController:vc];
       vc.navigationItem.title = @"熊猫直播";
       
       //设置底部导航内容
       nav.tabBarItem.title = self.tabBarTitleList[idx];
    
       nav.tabBarItem.image = [UIImage imageNamedForRender:self.tabBarImageList[idx]];
       
       nav.tabBarItem.selectedImage = [UIImage imageNamedForRender:self.tabBarImageSelectedList[idx]];
       
       //添加子控制器到父控制器
       [arrM addObject:nav];
       
   }];
    
    self.viewControllers = arrM.copy;
}


#pragma mark - 懒加载数组,保存数据内容
/// 懒加载底部图片
/// @return 底部图片
- (NSArray *)tabBarImageList{

    if( _tabBarImageList == nil){
    
        _tabBarImageList =
        
        
      @[@"tab-首页-normal.png.base.universal.regular.off.horizontal.normal.active.onepartscale.onepart.58341.000.00." ,
        @"tab_column.png.base.universal.regular.off.horizontal.normal.active.onepartscale.onepart.44735.000.00.",
        @"tab-直播-normal.png.base.universal.regular.off.horizontal.normal.active.onepartscale.onepart.54766.000.00.",
        @"tab-我的-normal.png.base.universal.regular.off.horizontal.normal.active.onepartscale.onepart.32532.000.00."];
    }
    
    
    return _tabBarImageList;
}

/// 懒加载被选中的底部图片
/// @return 被选中的底部图片
- (NSArray *)tabBarImageSelectedList{
    
    if( _tabBarImageSelectedList == nil){
        
        _tabBarImageSelectedList =
        
        @[@"tab-首页-hover.png.base.universal.regular.off.horizontal.normal.active.onepartscale.onepart.56427.000.00.",
          @"tab_column_honer.png.base.universal.regular.off.horizontal.normal.active.onepartscale.onepart.3834.000.00.",
          @"tab-直播-hover.png.base.universal.regular.off.horizontal.normal.active.onepartscale.onepart.29005.000.00.",
          @"tab-我的-hover.png.base.universal.regular.off.horizontal.normal.active.onepartscale.onepart.5747.000.00."];
    }
    
    
    return _tabBarImageSelectedList;
}

/// 懒加载底部文字
/// @return 底部文字
-(NSArray *)tabBarTitleList{
    
    if( _tabBarTitleList == nil){
        
        _tabBarTitleList = @[@"首页",@"栏目",@"直播",@"我的"];
    }
    
    return _tabBarTitleList;
}

- (NSArray *)indexes{
    
    if( _indexes == nil){
        
        _indexes = @[[UIViewController new],[UIViewController new],[UIViewController new],[LZMyPreferenceTVC new]];
    }
    
    return _indexes;
}


@end
