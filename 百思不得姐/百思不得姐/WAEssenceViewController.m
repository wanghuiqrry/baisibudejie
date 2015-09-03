//
//  WAEssenceViewController.m
//  百思不得姐
//
//  Created by peanut on 15/9/1.
//  Copyright (c) 2015年 peanut. All rights reserved.
//

#import "WAEssenceViewController.h"
#import "WATagViewController.h"

@interface WAEssenceViewController ()

@end

@implementation WAEssenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = WACommonBgColor;
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
    UIBarButtonItem *item = [UIBarButtonItem itemWithImage:@"MainTagSubIcon" highImage:@"MainTagSubIconClick" target:self action:@selector(buttonClick)];
    
    self.navigationItem.leftBarButtonItem = item;
    
    
}

- (void)buttonClick
{
    WATagViewController *vc = [[WATagViewController alloc] init];
    
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
}


@end
