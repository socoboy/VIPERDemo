//
//  DemoAppContainerView.m
//  VIPERDemo
//
//  Created by Tung Duong Thanh on 8/26/16.
//  Copyright © 2016 GEM. All rights reserved.
//

#import "DemoAppContainerViewController.h"

@implementation DemoAppContainerViewController

@synthesize presenter = _presenter;
@synthesize viewModel = _viewModel;

#pragma mark + Life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.presenter viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.presenter viewWillAppear];
}

#pragma mark + View Protocol
- (void)reloadViewWithUpdatedState {
    self.accountBtn.selected = [self.viewModel isAccountMode];
    self.contactBtn.selected = [self.viewModel isContactMode];
}

- (UIView *)listViewContainer {
    return self.listContainer;
}

#pragma mark + IBAction
- (void)accountBtnAction:(id)sender {
    [self.presenter switchToAccountModeIfNeed];
}

- (void)contactBtnAction:(id)sender {
    [self.presenter switchToContactModeIfNeed];
}
@end
