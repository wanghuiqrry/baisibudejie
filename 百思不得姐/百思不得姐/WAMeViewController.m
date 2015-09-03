//
//  WAMeViewController.m
//  百思不得姐
//
//  Created by peanut on 15/9/1.
//  Copyright (c) 2015年 peanut. All rights reserved.
//

#import "WAMeViewController.h"
#import "WASettingViewController.h"

@interface WAMeViewController ()

@end

@implementation WAMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = WACommonBgColor;
    
    self.navigationItem.title = @"我的";
    
    
    UIBarButtonItem *moonItem = [UIBarButtonItem itemWithImage:@"mine-moon-icon" highImage:@"mine-moon-icon-click" target:self action:@selector(moonItem)];
    
    UIBarButtonItem *settingItem = [UIBarButtonItem itemWithImage:@"mine-setting-icon" highImage:@"mine-setting-icon-click" target:self action:@selector(settingItem)];
    
    self.navigationItem.rightBarButtonItems = @[settingItem,moonItem];
}

- (void)moonItem
{
    WALogFunc;
}

- (void)settingItem
{
    WASettingViewController *setting = [[WASettingViewController alloc] init];
    //  隐藏导航栏
    setting.hidesBottomBarWhenPushed = YES;
    //  push出设置界面
    [self.navigationController pushViewController:setting animated:YES];
}


@end
