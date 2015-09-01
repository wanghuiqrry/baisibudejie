//
//  WANewViewController.m
//  百思不得姐
//
//  Created by peanut on 15/9/1.
//  Copyright (c) 2015年 peanut. All rights reserved.
//

#import "WANewViewController.h"

@interface WANewViewController ()

@end

@implementation WANewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
    UIBarButtonItem *item = [UIBarButtonItem itemWithImage:@"MainTagSubIcon" highImage:@"MainTagSubIconClick" target:self action:@selector(buttonClick)];
    
    self.navigationItem.leftBarButtonItem = item;
    
}

- (void)buttonClick
{
    WALogFunc;
}



@end
