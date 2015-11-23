//
//  LZMyPreferenceLabel.m
//  LZTabBarCnotroller
//
//  Created by liuzhu on 15/11/23.
//  Copyright © 2015年 liuzhu. All rights reserved.
//

#import "LZMyPreferenceLabel.h"
#import "LZMyPreferenceModel.h"

@implementation LZMyPreferenceLabel


+ (instancetype)labelWithTitle:(NSString *)title icon:(NSString *)icon option:(Option)option{
    
    LZMyPreferenceLabel *model = [self itemWithTitle:title icon:icon];
    
    model.option = option;
    
    return model;
}
@end
