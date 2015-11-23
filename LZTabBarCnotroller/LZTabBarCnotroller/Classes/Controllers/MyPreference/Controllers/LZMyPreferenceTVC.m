//
//  LZMyPreferenceTVC.m
//  LZTabBarCnotroller
//
//  Created by liuzhu on 15/11/23.
//  Copyright © 2015年 liuzhu. All rights reserved.
//
#import "LZMyPreferenceTVC.h"
#import "LZBaseTableViewVC.h"
#import "LZMyPreferenceCell.h"
#import "LZMyPreferenceModel.h"
#import "LZMyPreferenceSwitch.h"
#import "LZMyPreferenceArrow.h"
#import "LZMyPreferenceGroup.h"
#import "LZMyPreferenceHeader.h"
#import "LZMyPreferenceTask.h"

@interface LZMyPreferenceTVC()


@end

@implementation LZMyPreferenceTVC

- (void)viewDidLoad{

    [super viewDidLoad];
    
    //取消分割线
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
}
//设置内容
- (NSArray *)addGroups{

    //分项
    LZMyPreferenceModel *model11 = [LZMyPreferenceSwitch itemWithTitle:@"开播提醒" icon:@""];
    LZMyPreferenceModel *model21 = [LZMyPreferenceArrow arrowWithTitle:@"我的关注" icon:@""destController:[UIViewController class]];
    LZMyPreferenceModel *model22 = [LZMyPreferenceArrow arrowWithTitle:@"我的任务" icon:@""destController:[LZMyPreferenceTask class]];
    LZMyPreferenceModel *model31 = [LZMyPreferenceArrow arrowWithTitle:@"意见反馈" icon:@""destController:[UIViewController class]];
    LZMyPreferenceModel *model41 = [LZMyPreferenceArrow arrowWithTitle:@"关于我们" icon:@"" destController:[UIViewController class]];
    
    //设置每组模型
    LZMyPreferenceGroup *group1 = [LZMyPreferenceGroup groupWithItems:@[model11]];
    LZMyPreferenceGroup *group2 = [LZMyPreferenceGroup groupWithItems:@[model21,model22]];

    LZMyPreferenceGroup *group3 = [LZMyPreferenceGroup groupWithItems:@[model31]];
    LZMyPreferenceGroup *group4 = [LZMyPreferenceGroup groupWithItems:@[model41]];


    //添加所有模型到数组
    return @[group1,group2,group3,group4];

}
@end
