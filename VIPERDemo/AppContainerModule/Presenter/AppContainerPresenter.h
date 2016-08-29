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
@property (nonatomic, strong) UIViewController<AppContainerView> *view;
@property (nonatomic, strong) id<AppContainerViewModel> viewModel;
@property (nonatomic, strong) id<AppContainerInteractor> interactor;

- (void)viewDidLoad;
- (void)viewWillAppear;

- (void)switchToAccountModeIfNeed;
- (void)switchToContactModeIfNeed;

@end
