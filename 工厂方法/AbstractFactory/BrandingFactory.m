//
//  BrandingFactory.m
//  工厂方法
//
//  Created by chenjiangchuan on 2017/3/31.
//  Copyright © 2017年 chenjiangchuan. All rights reserved.
//

#import "BrandingFactory.h"
#import "AcmeBrandingFactory.h"
#import "SierraBrandingFactory.h"

@implementation BrandingFactory

+ (instancetype)brandingFactoryWithCorp:(NSString *)corpName {
    
    BrandingFactory *factory = nil;
    
    if ([corpName isEqualToString:@"Sierra"]) {
        factory = [[SierraBrandingFactory alloc] init];
    } else if ([corpName isEqualToString:@"Acme"]) {
        factory = [[AcmeBrandingFactory alloc] init];
    }
    return factory;
}

+ (instancetype)brandingFactory {
    BrandingFactory *factory = nil;
    
#if defined (USE_SIERRA)
    
#elif defined (USE_ACME)
    
#endif
    
    return factory;
}

- (UIView *)brandedView {
    return nil;
}

- (UILabel *)brandedLabel {
    return nil;
}

- (UIButton *)brandedButton {
    return nil;
}

@end
