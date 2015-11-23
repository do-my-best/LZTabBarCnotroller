//
//  LZMyPreferenceTask.m
//  LZTabBarCnotroller
//
//  Created by liuzhu on 15/11/23.
//  Copyright © 2015年 liuzhu. All rights reserved.
//

#import "LZMyPreferenceTask.h"
#import "LZMyPreferenceModel.h"
#import "LZMyPreferenceSwitch.h"
#import "LZMyPreferenceArrow.h"
#import "LZMyPreferenceGroup.h"
#import "LZMyPreferenceHeader.h"
#import "LZMyPreferenceLabel.h"


@interface LZMyPreferenceTask ()

@end

@implementation LZMyPreferenceTask

- (void)viewDidLoad{

    [super viewDidLoad];
    
    self.tableView.separatorInset = UIEdgeInsetsMake(0, 20, 0, 20);
}
- (NSArray *)addGroups{
    
    //分项
    LZMyPreferenceModel *model11 = [LZMyPreferenceLabel labelWithTitle:@"点我送竹子" icon:@"" option:^{
    
    }];
    LZMyPreferenceModel *model12 = [LZMyPreferenceLabel labelWithTitle:@"设置头像" icon:@""option:^{
    }];
    LZMyPreferenceModel *model13 = [LZMyPreferenceLabel labelWithTitle:@"浏览主播" icon:@""option:^{
    
    }];
    LZMyPreferenceModel *model14 = [LZMyPreferenceLabel labelWithTitle:@"关注主播" icon:@""option:^{
        
    }];
    LZMyPreferenceModel *model15 = [LZMyPreferenceLabel labelWithTitle:@"送竹子给主播" icon:@"" option:^{
        
    }];
    LZMyPreferenceModel *model16 = [LZMyPreferenceLabel labelWithTitle:@"完成全部任务" icon:@"" option:^{
        
    }];

    
    //设置每组模型
    LZMyPreferenceGroup *group1 = [LZMyPreferenceGroup groupWithItems:@[model11,model12,model13,model14,model15,model16]];
    
    //添加所有模型到数组
    return @[group1];
}



@end
