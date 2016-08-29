//
//  DemoAppContainerWireframe.m
//  VIPERDemo
//
//  Created by Tung Duong Thanh on 8/26/16.
//  Copyright © 2016 GEM. All rights reserved.
//

#import "DemoAppContainerWireframe.h"

#import "DemoAppContainerViewController.h"
#import "DemoAppContainerPresenter.h"
#import "DemoAppContainerInteractor.h"

@implementation DemoAppContainerWireframe

@synthesize presenter = _presenter;
@synthesize view = _view;

- (instancetype)init
{
    self = [super init];
    if (self) {
        UIViewController<AppContainerView> *view = [DemoAppContainerViewController new];
        id<AppContainerPresenter> presenter = [DemoAppContainerPresenter new];
        id<AppContainerInteractor> interactor = [DemoAppContainerInteractor new];
        
        presenter.view = view;
        presenter.interactor = interactor;
        presenter.wireframe = self;
        
        view.presenter = presenter;
        interactor.presenter = presenter;
        
        _presenter = presenter;
        _view = view;
    }
    return self;
}

- (void)installModuleToWindow:(UIWindow *)window {
    window.rootViewController = self.view;
    [window makeKeyAndVisible];
}

@end
