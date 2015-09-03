//
//  WAFriendTrendsViewController.m
//  百思不得姐
//
//  Created by peanut on 15/9/1.
//  Copyright (c) 2015年 peanut. All rights reserved.
//

#import "WAFriendTrendsViewController.h"
#import "WALoginRegisterViewController.h"

@interface WAFriendTrendsViewController ()

@end

@implementation WAFriendTrendsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = WACommonBgColor;
    self.navigationItem.title = @"我的关注";
    
    UIBarButtonItem *item = [UIBarButtonItem itemWithImage:@"friendsRecommentIcon" highImage:@"friendsRecommentIcon-click" target:self action:@selector(buttonClick)];
    
    self.navigationItem.leftBarButtonItem = item;
}

- (void)buttonClick
{
//    WALogFunc;
    
    UITableViewController *t = [[UITableViewController alloc] init];
    [self.navigationController pushViewController:t animated:YES ];
}
- (IBAction)LoginRegisterClick:(UIButton *)sender {
    WALoginRegisterViewController *loginRegister = [[WALoginRegisterViewController alloc] init];
    [self presentViewController:loginRegister animated:YES completion:nil];
    
}

@end
