//
//  LightBackgroundViewGenerator.m
//  工厂方法
//
//  Created by chenjiangchuan on 2017/3/30.
//  Copyright © 2017年 chenjiangchuan. All rights reserved.
//

#import "LightBackgroundViewGenerator.h"
#import "LightBackgroundView.h"

@implementation LightBackgroundViewGenerator

- (id)backgroundView {
    NSLog(@"%s", __FUNCTION__);
    return [[LightBackgroundView alloc] init];
}

@end
