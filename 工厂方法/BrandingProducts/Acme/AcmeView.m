//
//  AcmeView.m
//  工厂方法
//
//  Created by chenjiangchuan on 2017/3/31.
//  Copyright © 2017年 chenjiangchuan. All rights reserved.
//

#import "AcmeView.h"

@implementation AcmeView

- (instancetype)init {
    self = [super init];
    if (self) {
        NSLog(@"%s", __FUNCTION__);
    }
    return self;
}

@end
