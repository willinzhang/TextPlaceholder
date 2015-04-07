//
//  Placeholder.m
//  TextPlaceholder
//
//  Created by 张伟立 on 15/4/5.
//  Copyright (c) 2015年 willinzhang. All rights reserved.
//

#import "Placeholder.h"

@implementation Placeholder

+ (void)placeholderRedText:(NSString *)text textFeild:(UITextField *)textFeild textColor:(UIColor *)textColor
{
    // 编辑可变属性
    NSMutableAttributedString *placeholde = [[NSMutableAttributedString alloc]initWithString:text];
    [placeholde addAttribute:NSForegroundColorAttributeName value:textColor range:NSMakeRange(0, placeholde.length)];
    // 居中
    textFeild.textAlignment = NSTextAlignmentCenter;
    textFeild.attributedPlaceholder = placeholde;
}

@end
