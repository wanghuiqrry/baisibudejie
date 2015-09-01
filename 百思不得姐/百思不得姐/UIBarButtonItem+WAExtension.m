//
//  UIBarButtonItem+WAExtension.m
//  百思不得姐
//
//  Created by peanut on 15/9/1.
//  Copyright (c) 2015年 peanut. All rights reserved.
//

#import "UIBarButtonItem+WAExtension.h"

@implementation UIBarButtonItem (WAExtension)


+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action
{
     UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    [button sizeToFit];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return [[self alloc]initWithCustomView:button];
}

@end
