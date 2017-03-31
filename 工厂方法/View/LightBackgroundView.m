//
//  LightBackgroundView.m
//  工厂方法
//
//  Created by chenjiangchuan on 2017/3/30.
//  Copyright © 2017年 chenjiangchuan. All rights reserved.
//

#import "LightBackgroundView.h"

@interface LightBackgroundView ()

/** UILabel */
@property (strong, nonatomic) UILabel *label;

@end

@implementation LightBackgroundView

#pragma mark - Life Cycle

- (instancetype)init {
    self = [super init];
    NSLog(@"%s", __FUNCTION__);
    if (self) {
        [self setBackgroundColor:[UIColor orangeColor]];
        [self addSubview:self.label];
    }
    
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    CGFloat width = self.bounds.size.width;
    CGFloat height = self.bounds.size.height;
    self.label.frame = CGRectMake(50, 0, width*0.5, height);
}

#pragma mark - Lazy Init

- (UILabel *)label {
    if (_label == nil) {
        _label = [[UILabel alloc] init];
        _label.text = @"亮丽的背景";
    }
    return _label;
}

@end
