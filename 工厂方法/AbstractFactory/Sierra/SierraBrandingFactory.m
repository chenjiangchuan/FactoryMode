//
//  SierraBrandingFactory.m
//  工厂方法
//
//  Created by chenjiangchuan on 2017/3/31.
//  Copyright © 2017年 chenjiangchuan. All rights reserved.
//

#import "SierraBrandingFactory.h"
#import "SierraView.h"
#import "SierraLabel.h"
#import "SierraButton.h"

@implementation SierraBrandingFactory

- (UILabel *)brandedLabel {
    return [[SierraLabel alloc] init];
}

- (UIView *)brandedView {
    return [[SierraView alloc] init];
}

- (UIButton *)brandedButton {
    return [[SierraButton alloc] init];
}

@end
