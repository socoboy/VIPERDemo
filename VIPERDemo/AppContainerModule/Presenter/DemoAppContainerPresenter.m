//
//  DemoAppContainerPresenter.m
//  VIPERDemo
//
//  Created by Tung Duong Thanh on 8/26/16.
//  Copyright © 2016 GEM. All rights reserved.
//

#import "DemoAppContainerPresenter.h"
#import "DemoAppContainerViewModel.h"

@interface DemoAppContainerPresenter ()

- (void)presentAccountList;
- (void)presentContactList;

@end

@implementation DemoAppContainerPresenter

@synthesize view = _view;
@synthesize interactor = _interactor;
@synthesize wireframe = _wireframe;
@synthesize viewModel = _viewModel;

#pragma mark + Presenter protocols
- (void)viewDidLoad {
    DemoAppContainerViewModel *viewModel = [DemoAppContainerViewModel new];
    viewModel.accountMode = YES;
    
    self.viewModel = viewModel;
    self.view.viewModel = viewModel;
    [self.view reloadViewWithUpdatedState];
    
    // call wireframe to load list account module
    [self presentAccountList];
}

- (void)viewWillAppear {
    if ([self.viewModel isContactMode]) {
        [self.wireframe reloadContactModules];
    } else {
        [self.wireframe reloadAccountModules];
    }
}

- (void)switchToAccountModeIfNeed {
    if ([self.viewModel isContactMode]) {
        [self.viewModel setAccountMode:YES];
        [self.view reloadViewWithUpdatedState];
        
        [self.wireframe hideContactModules];
        [self presentAccountList];
    }
}

- (void)switchToContactModeIfNeed {
    if ([self.viewModel isAccountMode]) {
        [self.viewModel setContactMode:YES];
        [self.view reloadViewWithUpdatedState];
        
        [self.wireframe hideAccountModules];
        [self presentContactList];
    }
}

#pragma mark + Internal
- (void)presentAccountList {
    // Get place to show-up list account view
    UIView *listViewContainer = [self.view listViewContainer];
    // Present list account into list container
    [self.wireframe presentListAccountInsideView:listViewContainer];
}

- (void)presentContactList {
    // Get place to show-up list contact view
    UIView *listViewContainer = [self.view listViewContainer];
    [self.wireframe presentListContactInsideView:listViewContainer];
}
@end
