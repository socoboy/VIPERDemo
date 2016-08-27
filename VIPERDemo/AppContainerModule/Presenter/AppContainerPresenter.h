//
//  AppContainerPresenter.h
//  VIPERDemo
//
//  Created by Tung Duong Thanh on 8/25/16.
//  Copyright © 2016 GEM. All rights reserved.
//

#import "AppContainerModule.h"

@protocol AppContainerPresenter <NSObject>

@property (nonatomic, weak) id<AppContainerWireframe> wireframe;
@property (nonatomic, strong) id<AppContainerView> view;
@property (nonatomic, strong) id<AppContainerInteractor> interactor;

- (void)installViewToWindow:(UIWindow *)window;

- (void)presentListAccountModuleToView:(UIView *)view;
- (void)presentListContactModuleToView:(UIView *)view;
- (void)presentAccountDetailModuleToView:(UIView *)view withID:(NSString *)accountId;
- (void)presentContactDetailModuleToView:(UIView *)view withId:(NSString *)contactId;

@end
