//
//  WAFriendTrendsViewController.m
//  百思不得姐
//
//  Created by peanut on 15/9/1.
//  Copyright (c) 2015年 peanut. All rights reserved.
//

#import "WAFriendTrendsViewController.h"

@interface WAFriendTrendsViewController ()

@end

@implementation WAFriendTrendsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"我的关注";
    
    UIBarButtonItem *item = [UIBarButtonItem itemWithImage:@"friendsRecommentIcon" highImage:@"friendsRecommentIcon-click" target:self action:@selector(buttonClick)];
    
    self.navigationItem.leftBarButtonItem = item;
}

- (void)buttonClick
{
    WALogFunc;
}

@end
