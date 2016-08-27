//
//  DemoAppContainerPresenter.m
//  VIPERDemo
//
//  Created by Tung Duong Thanh on 8/26/16.
//  Copyright © 2016 GEM. All rights reserved.
//

#import "DemoAppContainerPresenter.h"

@implementation DemoAppContainerPresenter

@synthesize view = _view;
@synthesize interactor = _interactor;
@synthesize wireframe = _wireframe;

- (void)installViewToWindow:(UIWindow *)window {
    [self.view drawOnWindow:window];
}

- (void)presentListAccountModuleToView:(UIView *)view {
    
}

@end
