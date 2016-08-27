//
//  AppContainerWireframe.h
//  VIPERDemo
//
//  Created by Tung Duong Thanh on 8/25/16.
//  Copyright © 2016 GEM. All rights reserved.
//

#import "AppContainerModule.h"

@protocol AppContainerWireframe <NSObject>

@property (nonatomic, strong) id<AppContainerPresenter> presenter;

- (void)installModuleToWindow:(UIWindow *)window;

- (void)presentListAccountModuleInsideView:(UIView *)view;
- (void)presentListContactModuleInsideView:(UIView *)view;
- (void)presentDetailAccountModuleInsideView:(UIView *)view withID:(NSString *)accountId;
- (void)presentDetailContactModuleInsideView:(UIView *)view withId:(NSString *)contactId;

@end
