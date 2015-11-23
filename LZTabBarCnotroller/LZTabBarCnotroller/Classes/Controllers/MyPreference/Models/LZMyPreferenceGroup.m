//
//  LZMyPreferenceGroup.m
//  LZTabBarCnotroller
//
//  Created by liuzhu on 15/11/23.
//  Copyright © 2015年 liuzhu. All rights reserved.
//

#import "LZMyPreferenceGroup.h"

@implementation LZMyPreferenceGroup


+ (instancetype)groupWithItems:(NSArray *)items{

    LZMyPreferenceGroup *group = [LZMyPreferenceGroup new];
    
    group.modelArray = items;
    
    return group;
}
@end
