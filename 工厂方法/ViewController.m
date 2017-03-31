//
//  ViewController.m
//  工厂方法
//
//  Created by chenjiangchuan on 2017/3/30.
//  Copyright © 2017年 chenjiangchuan. All rights reserved.
//

#import "ViewController.h"
#import "LightBackgroundViewGenerator.h"
#import "DarkBackgroundViewGenerator.h"
#import "BackgroundViewGenerator.h"
#import "BackgroundView.h"

#import "BrandingFactory.h"

@interface ViewController ()

/** background view */
@property (strong, nonatomic) BackgroundView *bgView;

@end

/**
 *  @author orioChan, 17-03-31 10:03:52
 *
 *      工厂方法                          抽象工厂方法
 *---------------------------------------------------------
 * 使用类继承创建抽象产品              使用对象组合方式创建抽象产品
 *    创建单一产品                        创建多系列产品
 * 子类化generator，重载父类工厂方法   不需要重载父类工厂方法，但需要修改父类接口以便支持新产品
 *
 */

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.bgView];
    [self layoutPageSubviews];
}

- (void)layoutPageSubviews {
    self.bgView.frame = self.view.bounds;
    
    // 抽象工厂模式方法
    BrandingFactory *brandingFactory = [BrandingFactory brandingFactoryWithCorp:@"Acme"];
    UIView *view = [brandingFactory brandedView];
    NSLog(@"%@", [view class]);
}

- (BackgroundView *)bgView {
    if (_bgView == nil) {
        // 工厂模式方法
        BackgroundViewGenerator *generator = [[LightBackgroundViewGenerator alloc] init];
        _bgView = [generator backgroundView];
    }
    return _bgView;
}

@end
