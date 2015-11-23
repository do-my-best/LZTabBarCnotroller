//
//  LZMyPreferenceGroup.h
//  LZTabBarCnotroller
//
//  Created by liuzhu on 15/11/23.
//  Copyright © 2015年 liuzhu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LZMyPreferenceGroup : NSObject

/// 拥有的模型数组
@property (nonatomic,strong) NSArray *modelArray;

/// 初始化组模型
/// @param items 模型组
/// @return 一组模型
+ (instancetype)groupWithItems:(NSArray *)items;


@end
