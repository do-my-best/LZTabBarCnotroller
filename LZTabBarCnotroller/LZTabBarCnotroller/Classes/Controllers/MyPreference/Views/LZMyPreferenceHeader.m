//
//  LZMyPreferenceHeader.m
//  LZTabBarCnotroller
//
//  Created by liuzhu on 15/11/23.
//  Copyright © 2015年 liuzhu. All rights reserved.
//

#import "LZMyPreferenceHeader.h"

@implementation LZMyPreferenceHeader

- (instancetype)init{

    CGFloat width = [UIScreen mainScreen].bounds.size.width ;
    CGFloat height = [UIScreen mainScreen].bounds.size.height / 3;
    
    self = [super initWithFrame:CGRectMake(0, 0, width, height)];
    
//    self.backgroundColor = kMainColor;
    
    return self;
}



@end
