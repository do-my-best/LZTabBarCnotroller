//
//  LZMyPreferenceCell.h
//  LZTabBarCnotroller
//
//  Created by liuzhu on 15/11/23.
//  Copyright © 2015年 liuzhu. All rights reserved.
//

#import <UIKit/UIKit.h>
@class LZMyPreferenceModel;
@class LZMyPreferenceCell;

@protocol LZMyPreferenceCellDelegate <NSObject>

- (void)MyPreferenceCellAskToRefreshTableView:(LZMyPreferenceCell *)cell;

@end

@interface LZMyPreferenceCell : UITableViewCell

/// 拥有一个模型
@property ( nonatomic,strong ) LZMyPreferenceModel *model;

/// 让主控制器刷新表格等
@property (nonatomic,weak)id <LZMyPreferenceCellDelegate> delegate;

@end
