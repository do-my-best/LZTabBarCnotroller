//
//  LZMyPreferenceModel.m
//  LZTabBarCnotroller
//
//  Created by liuzhu on 15/11/23.
//  Copyright © 2015年 liuzhu. All rights reserved.
//

#import "LZMyPreferenceModel.h"

@implementation LZMyPreferenceModel

/// 给模型赋值,类似于字典转模型
/// @param title 传来的参数
/// @param icon 传来的左侧图片
/// @return 返回的模型
+ (instancetype)itemWithTitle:(NSString *)title icon:(NSString *)icon{

    LZMyPreferenceModel *model = [[self alloc]init];
    
    model.title = title;
    model.icon = icon;
    
    return model;
}

@end
