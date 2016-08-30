//
//  DemoAppContainerPresenter.m
//  VIPERDemo
//
//  Created by Tung Duong Thanh on 8/26/16.
//  Copyright © 2016 GEM. All rights reserved.
//

#import "DemoAppContainerPresenter.h"
#import "DemoAppContainerViewModel.h"

@implementation DemoAppContainerPresenter

@synthesize view = _view;
@synthesize interactor = _interactor;
@synthesize wireframe = _wireframe;
@synthesize viewModel = _viewModel;

- (void)initViewState {
    DemoAppContainerViewModel *viewModel = [DemoAppContainerViewModel new];
    // default is account mode
    viewModel.accountMode = YES;
    
    // set view model to view
    self.viewModel = viewModel;
    self.view.viewModel = viewModel;
    
    // call reload state
    [self.view reloadViewWithUpdatedState];
}

- (void)viewDidLoad {
    DemoAppContainerViewModel *viewModel = [DemoAppContainerViewModel new];
    viewModel.accountMode = YES;
    
    self.viewModel = viewModel;
    self.view.viewModel = viewModel;
    [self.view reloadViewWithUpdatedState];
    
    // call wireframe to load list account module
    // Get place to show-up list account view
    UIView *listViewContainer = [self.view listViewContainer];
    [self.wireframe presentListAccountInsideView:listViewContainer];
}

- (void)viewWillAppear {
    if ([self.viewModel isContactMode]) {
#warning PENDING - Call wireframe to ask list contact module and contact detail to reload datas
    } else {
#warning PENDING - Call wireframe to ask list account module and account detail to reload datas
    }
}

- (void)switchToAccountModeIfNeed {
    if ([self.viewModel isContactMode]) {
        [self.viewModel setAccountMode:YES];
        [self.view reloadViewWithUpdatedState];
        
#warning PENDING - Call wireframe to load list account and detail account modules and hide list contact modules
    }
}

- (void)switchToContactModeIfNeed {
    if ([self.viewModel isAccountMode]) {
        [self.viewModel setContactMode:YES];
        [self.view reloadViewWithUpdatedState];
        
#warning PENDING - Call wireframe to load list contact and detail contact modules and hide list account modules
    }
}

@end
