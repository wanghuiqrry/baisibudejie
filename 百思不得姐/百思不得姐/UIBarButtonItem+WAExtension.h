//
//  UIBarButtonItem+WAExtension.h
//  百思不得姐
//
//  Created by peanut on 15/9/1.
//  Copyright (c) 2015年 peanut. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (WAExtension)

+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action;

@end
