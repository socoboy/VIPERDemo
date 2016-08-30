//
//  AppContainerWireframe.h
//  VIPERDemo
//
//  Created by Tung Duong Thanh on 8/25/16.
//  Copyright © 2016 GEM. All rights reserved.
//

#import "AppContainerModule.h"
#import "ListModule.h"

@protocol AppContainerWireframe <NSObject>

@property (nonatomic, strong) id<AppContainerPresenter> presenter;
@property (nonatomic, weak) UIViewController *view;

@property (nonatomic, strong) id<ListWireframe> listAccountWireframe;
@property (nonatomic, strong) id<ListWireframe> listContactWireframe;

- (void)installModuleToWindow:(UIWindow *)window;
- (void)presentListAccountInsideView:(UIView *)containerView;
@end
