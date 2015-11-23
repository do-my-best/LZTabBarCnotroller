//
//  LZBaseTableViewVC.m
//  LZTabBarCnotroller
//
//  Created by liuzhu on 15/11/23.
//  Copyright © 2015年 liuzhu. All rights reserved.
//

#import "LZBaseTableViewVC.h"
#import "LZMyPreferenceModel.h"
#import "LZMyPreferenceSwitch.h"
#import "LZMyPreferenceArrow.h"
#import "LZMyPreferenceGroup.h"
#import "LZMyPreferenceHeader.h"
#import "LZMyPreferenceCell.h"


#define  kLZMyPreferenceCellId @"LZMyPreferenceCellId"

@interface LZBaseTableViewVC ()<LZMyPreferenceCellDelegate>
/// 所有的分组
@property (nonatomic,strong)NSArray *groupList;

@end

@implementation LZBaseTableViewVC

- (instancetype)init{
    
    self = [super initWithStyle:UITableViewStyleGrouped];
    /// 设置 tableview
    [self setupTableView];
    
    return  self;
}

- (void)viewDidLoad{
    
    [super viewDidLoad];
    

    
}

/// 设置 tableview
- (void)setupTableView{
    
    /// 注册类
    [self.tableView registerClass:[LZMyPreferenceCell class] forCellReuseIdentifier:kLZMyPreferenceCellId];
    

    
    
}
#pragma mark 添加数据


#pragma mark UITableViewDelegate, UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return self.groupList.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    LZMyPreferenceGroup *group = self.groupList[section];
    return group.modelArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    LZMyPreferenceCell *cell = (LZMyPreferenceCell *)[tableView dequeueReusableCellWithIdentifier:kLZMyPreferenceCellId];
    
    //取出模型
    LZMyPreferenceGroup *group = self.groupList[indexPath.section];
    LZMyPreferenceModel *model = group.modelArray[indexPath.row];
    
    cell.model =model;
    
    //遵循代理
    cell.delegate = self;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //取模型
    LZMyPreferenceGroup *group = self.groupList[indexPath.section];
    LZMyPreferenceModel *model = group.modelArray[indexPath.row];
    
    if (model.option) {
        model.option();
    }else if(model.destController){
        //跳转
        UIViewController *vc = [model.destController new];
        vc.title = model.title;
        vc.view.backgroundColor = [UIColor whiteColor];
        [self.navigationController pushViewController:vc animated:YES];
    }
}

#pragma mark 数据
/// 懒加载多组模型
/// @return 多组模型
- (NSArray *)groupList{
    
    if (_groupList == nil) {
        
        _groupList = [self addGroups];
    }
    return _groupList;
}

- (NSArray *)addGroups{

    return @[];
}

#pragma mark LZMyPreferenceCellDelegate
- (void)MyPreferenceCellAskToRefreshTableView:(LZMyPreferenceCell *)cell{

    //获取 indexpath
    NSIndexPath *indexPath = [self.tableView indexPathForCell:cell];
    
    //刷新表格
    [self.tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
}
@end
