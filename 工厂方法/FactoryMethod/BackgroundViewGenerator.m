//
//  BackgroundViewGenerator.m
//  工厂方法
//
//  Created by chenjiangchuan on 2017/3/30.
//  Copyright © 2017年 chenjiangchuan. All rights reserved.
//

#import "BackgroundViewGenerator.h"
#import "BackgroundView.h"

@implementation BackgroundViewGenerator

- (id)backgroundView {
    return [[BackgroundView alloc] init];
}

@end
