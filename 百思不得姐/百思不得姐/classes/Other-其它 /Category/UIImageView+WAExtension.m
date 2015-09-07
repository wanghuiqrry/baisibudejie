//
//  UIImageView+WAExtension.m
//  百思不得姐
//
//  Created by peanut on 15/9/7.
//  Copyright (c) 2015年 peanut. All rights reserved.
//

#import "UIImageView+WAExtension.h"
#import <UIImageView+WebCache.h>

@implementation UIImageView (WAExtension)

- (void)setHeader:(NSString *)url

{
    [self setCircleHeader:url];
}

- (void)setCircleHeader:(NSString *)url
{
    WAWeakSelf;
    UIImage *placeholder = [[UIImage imageNamed:@"defaultUserIcon"]circleImage];
    
    [self sd_setImageWithURL:[NSURL URLWithString:url] placeholderImage:placeholder completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        
        if (image == nil) return ;
        // 如果图片下载失败,不做修改,只显示占位图片
        weakSelf.image = [image circleImage];
    }];
}
@end
