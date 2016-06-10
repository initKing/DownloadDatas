//
//  DownloadTableViewCell.m
//  DownloadTask
//
//  Created by CrazyHacker on 16/6/10.
//  Copyright © 2016年 CrazyHacker. All rights reserved.
//

#import "DownloadTableViewCell.h"
#import "DownloadModel.h"

@interface DownloadTableViewCell()

@property (weak, nonatomic) IBOutlet UIProgressView *progress;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;


@end
@implementation DownloadTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    UIButton *startButton = [[UIButton alloc] init];
    [startButton setTitle:@"Start" forState:UIControlStateNormal];
    
    [startButton setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
    [startButton setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    
    [startButton sizeToFit];
    
    self.accessoryView = startButton;
    
    // 添加按钮监听方法
    [startButton addTarget:self action:@selector(clickButton) forControlEvents:UIControlEventTouchUpInside];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setModel:(DownloadModel *)model {
    _model = model;
    self.nameLabel.text = model.name;
    self.progress.progress = model.progress;
    
}

#pragma mark - 下载按钮监听方法
- (void)clickButton {
    // 点击按钮后通知代理执行协议方法
    [_delegate clickButtonWithCell:self];
}
@end
