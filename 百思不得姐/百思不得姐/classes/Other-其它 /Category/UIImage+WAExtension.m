//
//  UIImage+WAExtension.m
//  百思不得姐
//
//  Created by peanut on 15/9/7.
//  Copyright (c) 2015年 peanut. All rights reserved.
//

#import "UIImage+WAExtension.h"

@implementation UIImage (WAExtension)
/**
 *  实现对象方法
 *
 *  @return 绘制圆形图标
 */
- (instancetype)circleImage
{
    // 开启图形上下文  (开始图片绘制)
    UIGraphicsBeginImageContext(self.size);
    
    // 获得上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    // 矩形框
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    
    // 添加一个圆 (Ellipse:椭圆)
    CGContextAddEllipseInRect(ctx, rect);
    
    // 裁剪
    CGContextClip(ctx);
    
    // 开始在裁剪完的圆上面添加一张图片
    [self drawInRect:rect];
    
    // 获得上下文中的图片
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    // 关闭上下文
    UIGraphicsEndImageContext();
    
    return image;
}
@end
