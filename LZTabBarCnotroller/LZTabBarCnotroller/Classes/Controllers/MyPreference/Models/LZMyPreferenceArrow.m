//
//  LZMyPreferenceArrow.m
//  LZTabBarCnotroller
//
//  Created by liuzhu on 15/11/23.
//  Copyright © 2015年 liuzhu. All rights reserved.
//

#import "LZMyPreferenceArrow.h"

@implementation LZMyPreferenceArrow

+ (instancetype)arrowWithTitle:(NSString *)title icon:(NSString *)icon destController:(Class)destController{

    LZMyPreferenceArrow *model = [self itemWithTitle:title icon:icon];
    
    model.destController = destController;
    
    return model;
}

+ (instancetype)arrowWithTitle:(NSString *)title icon:(NSString *)icon option:(Option)option{
    
    LZMyPreferenceArrow *model = [self itemWithTitle:title icon:icon];
    
    model.option = option;
    
    return model;
}
@end
