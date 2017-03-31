//
//  AcmeBrandingFactory.m
//  工厂方法
//
//  Created by chenjiangchuan on 2017/3/31.
//  Copyright © 2017年 chenjiangchuan. All rights reserved.
//

#import "AcmeBrandingFactory.h"
#import "AcmeView.h"
#import "AcmeLabel.h"
#import "AcmeButton.h"

@implementation AcmeBrandingFactory

- (UIView *)brandedView {
    return [[AcmeView alloc] init];
}

- (UIButton *)brandedButton {
    return [[AcmeButton alloc] init];
}

- (UILabel *)brandedLabel {
    return [[AcmeLabel alloc] init];
}

@end
