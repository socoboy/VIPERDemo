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

#pragma mark + Life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.presenter presentListAccountModuleToView:self.listContainer];
    
    self.accountBtn.selected = YES;
    self.contactBtn.selected = NO;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}

#pragma mark + View Protocol
- (void)drawOnWindow:(UIWindow *)window {
    window.rootViewController = self;
}

#pragma mark + IBAction
- (void)accountBtnAction:(id)sender {
    if (!self.accountBtn.selected) {
        self.accountBtn.selected = YES;
        [self.presenter presentListAccountModuleToView:self.listContainer];
    }
}

- (void)contactBtnAction:(id)sender {
    if (!self.contactBtn.selected) {
        self.contactBtn.selected = YES;
        [self.presenter presentListContactModuleToView:self.listContainer];
    }
}
@end
