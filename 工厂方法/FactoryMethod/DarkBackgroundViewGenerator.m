//
//  DarkBackgroundViewGenerator.m
//  工厂方法
//
//  Created by chenjiangchuan on 2017/3/30.
//  Copyright © 2017年 chenjiangchuan. All rights reserved.
//

#import "DarkBackgroundViewGenerator.h"
#import "DarkBackgroundView.h"

@implementation DarkBackgroundViewGenerator

- (id)backgroundView {
    NSLog(@"%s", __FUNCTION__);
    return [[DarkBackgroundView alloc] init];
}

@end
