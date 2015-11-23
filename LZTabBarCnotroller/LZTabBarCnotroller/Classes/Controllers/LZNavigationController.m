//
//  LZNavigationController.m
//  LZTabBarCnotroller
//
//  Created by liuzhu on 15/11/22.
//  Copyright © 2015年 liuzhu. All rights reserved.
//

#import "LZNavigationController.h"
#import "UIImage+OriginalImage.h"

@implementation LZNavigationController


+ (void)initialize{

    //设置所有 bar
    UINavigationBar *bar = [UINavigationBar appearance];
    bar.barTintColor = kMainColor;

    bar.titleTextAttributes = @{NSForegroundColorAttributeName:[UIColor whiteColor]};
    bar.translucent = NO;
    bar.backItem.backBarButtonItem = nil;
    
    //设置所有的 barbuttonitem
    UIBarButtonItem *item = [UIBarButtonItem appearance];
    
    
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{

    //设置 push 时隐藏底部栏
    if(self.viewControllers.count){
    
        viewController.hidesBottomBarWhenPushed = YES;
        
        //设置回退按钮
        UIBarButtonItem *backItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamedForRender:@"title_@2x_black.png.base.universal.regular.off.horizontal.normal.active.onepartscale.onepart.35075.000.00."] style:UIBarButtonItemStylePlain target:self action:@selector(backBtnClick)];
        viewController.navigationItem.leftBarButtonItems = @[backItem];

    }else{
        viewController.hidesBottomBarWhenPushed = NO;
        
         viewController.navigationItem.leftBarButtonItems = nil;

    }
    
    //打开回退手势
    self.interactivePopGestureRecognizer.delegate = nil;


    
    [super pushViewController:viewController animated:animated];
}

//返回上一个控制器
- (void)backBtnClick{

    [self popViewControllerAnimated:YES];
}
@end
