//
//  BrandingFactoryProtocol.h
//  工厂方法
//
//  Created by chenjiangchuan on 2017/3/31.
//  Copyright © 2017年 chenjiangchuan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol BrandingFactoryProtocol <NSObject>

+ (instancetype)brandingFactoryWithCorp:(NSString *)corpName;
+ (instancetype)brandingFactory;

- (UIView *)brandedView;
- (UIButton *)brandedButton;
- (UILabel *)brandedLabel;

@end
