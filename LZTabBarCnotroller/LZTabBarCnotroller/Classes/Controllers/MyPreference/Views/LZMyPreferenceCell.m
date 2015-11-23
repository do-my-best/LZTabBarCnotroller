//
//  LZMyPreferenceCell.m
//  LZTabBarCnotroller
//
//  Created by liuzhu on 15/11/23.
//  Copyright © 2015年 liuzhu. All rights reserved.
//

#import "LZMyPreferenceCell.h"
#import "LZMyPreferenceModel.h"
#import "LZMyPreferenceSwitch.h"
#import "LZMyPreferenceArrow.h"
#import "LZMyPreferenceLabel.h"

@interface LZMyPreferenceCell ()

/// 方便懒加载控件
@property (nonatomic,strong) UISwitch *lzSwitch;

/// 方便懒加载控件
@property (nonatomic,strong) UIButton *lzTaskBtn;

@end

@implementation LZMyPreferenceCell

/// 重写模型的 set 方法赋值
/// @param model 模型
- (void)setModel:(LZMyPreferenceModel *)model{

    _model = model;
    
    //设置文字和图片
    if (![model.icon isEqual: @""]) {
        
        self.imageView.image = [UIImage imageNamed:model.icon];
    }
    self.textLabel.text = model.title;
    
    //设置显示箭头还是开关
    if ([model isKindOfClass:[LZMyPreferenceArrow class]]) {
        
        self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }else if([model isKindOfClass:[LZMyPreferenceSwitch class]]){
    
        //取消行选中状态
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        
        //记录按钮状态
        self.lzSwitch.on = [[NSUserDefaults standardUserDefaults] boolForKey:model.title];
        
        //设置附件
        self.accessoryView = self.lzSwitch;
    }else if([model isKindOfClass:[LZMyPreferenceLabel class]]){
    
        self.accessoryView = self.lzTaskBtn;
        
        //获取内容
        NSInteger taskStatus = [[NSUserDefaults standardUserDefaults] integerForKey:model.title];
        
        NSString *taskContent;
        
        if ( taskStatus == 0){
        
           taskContent = @"点我进行";
        }else {
        
            taskContent = @"进行中";
        }
        
        //设置按钮
        [self.lzTaskBtn setTitle:taskContent forState:UIControlStateNormal];
        [self.lzTaskBtn sizeToFit];
    }
}

/// 懒加载,方便 cell 重用
/// @return  switch 开关
- (UIButton *)lzTaskBtn{
    
    if( _lzTaskBtn == nil ){
        
        _lzTaskBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        
        [_lzTaskBtn setTitleColor:kMainColor forState:UIControlStateNormal];
        
        [_lzTaskBtn addTarget:self action:@selector(taskBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _lzTaskBtn;
}

- (void)taskBtnClick:(UIButton *)btn{
    
    NSInteger taskStatus = [[NSUserDefaults standardUserDefaults] integerForKey:self.model.title];
    

    //点击按钮,让任务正在进行
    if (taskStatus == 0) {
        [[NSUserDefaults standardUserDefaults]  setInteger:1 forKey:self.model.title];
        [[NSUserDefaults standardUserDefaults] synchronize];
        
        //让控制器刷新数据
        if([self.delegate respondsToSelector:@selector(MyPreferenceCellAskToRefreshTableView:)]){
        
            [self.delegate MyPreferenceCellAskToRefreshTableView:self];
        }
    }

    
}

/// 懒加载,方便 cell 重用
/// @return  switch 开关
- (UISwitch *)lzSwitch{
    
    if( _lzSwitch == nil ){
        
        _lzSwitch = [UISwitch new];
        
        _lzSwitch.on = YES;
        
        [_lzSwitch addTarget:self action:@selector(valueChanges:) forControlEvents:UIControlEventValueChanged];
    }
    return _lzSwitch;
}

/// 记录开关的状态
/// @param lzSwitch 用户点击的开关
- (void)valueChanges:(UISwitch *)lzSwitch{

    //记录当前的值
    [[NSUserDefaults standardUserDefaults]setBool:lzSwitch.isOn forKey:self.model.title];
    
    //同步
    [[NSUserDefaults standardUserDefaults] synchronize];
}



@end
