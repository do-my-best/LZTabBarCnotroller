//
//  LZMyPreferenceModel.h
//  LZTabBarCnotroller
//
//  Created by liuzhu on 15/11/23.
//  Copyright © 2015年 liuzhu. All rights reserved.
//

typedef void (^Option) ();

#import <Foundation/Foundation.h>

@interface LZMyPreferenceModel : NSObject

/// 左侧图像
@property (nonatomic, copy) NSString *icon;

/// 文字内容
@property (nonatomic, copy) NSString *title;

/// 子标题
@property (nonatomic, copy) NSString *subTitle;

/// 目的控制器
@property (nonatomic,strong) Class  destController;

/// 目的操作
@property (nonatomic,copy) Option option;


/// 给模型赋值,类似于字典转模型
/// @param title 传来的参数
/// @param icon 传来的左侧图片
/// @return 返回的模型
+ (instancetype)itemWithTitle:(NSString *)title icon:(NSString *)icon;

@end
