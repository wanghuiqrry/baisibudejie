//
//  WALoginRegisterTextField.m
//  百思不得姐
//
//  Created by peanut on 15/9/4.
//  Copyright (c) 2015年 peanut. All rights reserved.
//

#import "WALoginRegisterTextField.h"
//  占位文字颜色
#define WAPlaceholderColorKey @"placeholderLabel.textColor"
//  默认的占位文字颜色
#define WAPlaceholderDefaultColor [UIColor grayColor]
//  聚焦的占位文字颜色
#define WAPlaceholderFocusColor [UIColor whiteColor]

@implementation WALoginRegisterTextField


- (void)awakeFromNib
{
    //  文本框的光标颜色
    self.tintColor = WAPlaceholderFocusColor;
    //  文字颜色
    self.textColor = WAPlaceholderFocusColor;
    [self resignFirstResponder];
    
}

//  文本框聚集时调用
- (BOOL)becomeFirstResponder
{
//    [self setValue:WAPlaceholderFocusColor forKey:WAPlaceholderColorKey];
    UILabel *label = [self valueForKey:@"placeholderLabel"];
    label.textColor = WAPlaceholderFocusColor;
    return [super becomeFirstResponder];
}

- (BOOL)resignFirstResponder
{
//    [self setValue:WAPlaceholderDefaultColor forKey:WAPlaceholderColorKey];
    UILabel *label = [self valueForKey:@"placeholderLabel"];
    label.textColor = WAPlaceholderDefaultColor;
    return  [super resignFirstResponder];
}
@end
