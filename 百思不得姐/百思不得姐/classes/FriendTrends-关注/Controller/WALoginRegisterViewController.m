//
//  WALoginRegisterViewController.m
//  百思不得姐
//
//  Created by peanut on 15/9/3.
//  Copyright (c) 2015年 peanut. All rights reserved.
//

#import "WALoginRegisterViewController.h"

@interface WALoginRegisterViewController ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *line;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *line2;

@end

@implementation WALoginRegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)closeClick{
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}
- (IBAction)regiseLabel:(UIButton *)button {
    
    if (self.line2.constant == 0) {
        self.line2.constant = - self.view.width;
        button.selected = YES;
    }else{
        self.line2.constant = 0;
        button.selected = NO;
    }
    
    [UIView animateWithDuration:0.35 animations:^{
        [self.view layoutIfNeeded];
    }];
}



@end
