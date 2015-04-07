//
//  ViewController.m
//  TextPlaceholder
//
//  Created by 张伟立 on 15/4/5.
//  Copyright (c) 2015年 willinzhang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong) UITextField *textTest;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    _textTest = [[UITextField alloc]initWithFrame:CGRectMake(10, 50, 250, 30)];
    _textTest.borderStyle = UITextBorderStyleRoundedRect;
    _textTest.placeholder = @"I‘m Nipple Man";
    [self.view addSubview:_textTest];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"PUSH ME" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor redColor];
    btn.frame = CGRectMake(100, 100, 100, 100);
    
    [btn addTarget:self action:@selector(clickPushMe) forControlEvents:UIControlEventTouchUpInside];
    

    [self.view addSubview:btn];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)animationPlaceholder
{
    // 延时
    [Placeholder placeholderRedText:@"I'm Surperman" textFeild:_textTest textColor:[UIColor redColor]];

    [self performSelector:@selector(placeholderGary) withObject:nil afterDelay:1.0];

}



- (void)placeholderGary
{
    [Placeholder placeholderRedText:@"I'm Surperman" textFeild:_textTest textColor:[UIColor grayColor]];
    _textTest.textAlignment = NSTextAlignmentLeft;
    _textTest.placeholder = @"I‘m Nipple Man";

}

- (void)clickPushMe
{
    if (_textTest.text.length == 0) {
        [self animationPlaceholder];
    }else {
        _textTest.text = nil;
        [self animationPlaceholder];
    }
}
@end
