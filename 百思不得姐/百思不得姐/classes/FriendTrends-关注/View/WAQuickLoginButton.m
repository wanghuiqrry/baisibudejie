//
//  WAQuickLoginButton.m
//  百思不得姐
//
//  Created by peanut on 15/9/3.
//  Copyright (c) 2015年 peanut. All rights reserved.
//

#import "WAQuickLoginButton.h"


@implementation WAQuickLoginButton

- (void)awakeFromNib
{
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    //  调整图片的位置
    self.imageView.y = 0;
    self.imageView.centerX = self.width * 0.5;
    
    //  调整文字的位置和尺寸
    self.titleLabel.x = 0;
    self.titleLabel.y = self.imageView.height;
    self.titleLabel.width = self.width;
    self.titleLabel.height = self.height - self.titleLabel.y;
}
@end
