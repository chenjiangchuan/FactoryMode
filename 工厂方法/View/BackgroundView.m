//
//  BackgroundView.m
//  工厂方法
//
//  Created by chenjiangchuan on 2017/3/30.
//  Copyright © 2017年 chenjiangchuan. All rights reserved.
//

#import "BackgroundView.h"
#import "LightBackgroundView.h"
#import "DarkBackgroundView.h"

@implementation BackgroundView

- (instancetype)init {
    self = [super init];
    NSLog(@"%s", __FUNCTION__);
    if (self) {
        [self setBackgroundColor:[UIColor whiteColor]];
    }
    
    return self;
}

@end
