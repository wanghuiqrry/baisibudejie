//
//  WATagCell.m
//  百思不得姐
//
//  Created by peanut on 15/9/6.
//  Copyright (c) 2015年 peanut. All rights reserved.
//

#import "WATagCell.h"
#import "WATag.h"
#import <UIImageView+WebCache.h>

@interface WATagCell()
@property (weak, nonatomic) IBOutlet UIImageView *imageListView;
@property (weak, nonatomic) IBOutlet UILabel *themeNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *subNumberLabel;

@end
@implementation WATagCell



- (void)setFrame:(CGRect)frame
{
    //  减少cell的高度以显示背景色(分割线效果)
    
    frame.size.height -= 1;
    
    //  设置左右边距
//    frame.origin.x += 5;
//    frame.size.width -= 2 * frame.origin.x;
    
    [super setFrame:frame];
}

- (void)setTagModel:(WATag *)tagModel
{
    _tagModel = tagModel;
    
    //  利用框架导入网络信息
    //  设置标题图片
    [self.imageListView setHeader:tagModel.image_list];
    //  设置标题
    self.themeNameLabel.text = tagModel.theme_name;
    //  设置下载数量
    if (tagModel.sub_number >= 10000) {
        self.subNumberLabel.text = [NSString stringWithFormat:@"%.1f万人订阅",tagModel.sub_number / 10000.0];
    }else{
        self.subNumberLabel.text = [NSString stringWithFormat:@"%zd人订阅",tagModel.sub_number];
    }
}
@end
