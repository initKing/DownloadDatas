//
//  DownloadTableViewCell.h
//  DownloadTask
//
//  Created by CrazyHacker on 16/6/10.
//  Copyright © 2016年 CrazyHacker. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DownloadModel, DownloadTableViewCell;

@protocol DownloadTableViewCellDeletage <NSObject>
/** cell的代理方法 */
- (void)clickButtonWithCell:(DownloadTableViewCell *)cell;
@end

@interface DownloadTableViewCell : UITableViewCell
/** cell的代理属性 */
@property (nonatomic, weak) id<DownloadTableViewCellDeletage>delegate;
@property (nonatomic, strong) DownloadModel *model;
@end
