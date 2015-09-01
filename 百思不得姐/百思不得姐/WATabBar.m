//
//  WATabBar.m
//  百思不得姐
//
//  Created by peanut on 15/9/1.
//  Copyright (c) 2015年 peanut. All rights reserved.
//

#import "WATabBar.h"
@interface WATabBar()
//  设置全局按钮
@property (nonatomic ,weak)UIButton *plusButton;
@end


@implementation WATabBar

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        UIButton *plusButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [plusButton setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [plusButton setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateSelected];
        //  使按钮大小适配图片
        [plusButton sizeToFit];
        //  添加按钮方法
        [plusButton addTarget:self action:@selector(plusClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:plusButton];
        self.plusButton = plusButton;
    }
    return self;
}

- (void)plusClick
{
    WALogFunc;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    //  设置按钮的位置
    self.plusButton.center = CGPointMake(self.frame.size.width * 0.5, self.frame.size.height * 0.5);
    
    //  初始化按钮数量
    int index = 0;
    
    CGFloat tabBarButtonW = self.frame.size.width / 5;
    CGFloat tabBarButtonH = self.frame.size.height;
    CGFloat tabBarButtonY = 0;
    
    for (UIView *tabBarButton in self.subviews) {
        //  如果类名(tabBarButton.class)与字符串相同的话
        if (![NSStringFromClass(tabBarButton.class) isEqualToString:@"UITabBarButton"])
            continue;
            
            CGFloat tabBarButtonX = index * tabBarButtonW;
            if (index >= 2) {
                tabBarButtonX += tabBarButtonW;
            }
        
        
        tabBarButton.frame = CGRectMake(tabBarButtonX, tabBarButtonY, tabBarButtonW, tabBarButtonH);
        index ++;
    }
    }
@end
