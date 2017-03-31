//
//  DarkBackgroundView.m
//  工厂方法
//
//  Created by chenjiangchuan on 2017/3/30.
//  Copyright © 2017年 chenjiangchuan. All rights reserved.
//

#import "DarkBackgroundView.h"

@interface DarkBackgroundView ()

/** UIButton */
@property (strong, nonatomic) UIButton *button;

@end

@implementation DarkBackgroundView

#pragma mark - Life Cycle

- (instancetype)init {
    self = [super init];
    NSLog(@"%s", __FUNCTION__);
    if (self) {
        [self setBackgroundColor:[UIColor darkGrayColor]];
        [self addSubview:self.button];
    }
    
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    CGFloat width = self.bounds.size.width;
    CGFloat height = self.bounds.size.height;
    self.button.frame = CGRectMake(0, 0, width*0.5, height);
}

#pragma mark - Lazy Init

- (UIButton *)button {
    if (_button == nil) {
        _button = [UIButton buttonWithType:UIButtonTypeSystem];
        [_button setTitle:@"click me" forState:UIControlStateNormal];
    }
    return _button;
}

@end
