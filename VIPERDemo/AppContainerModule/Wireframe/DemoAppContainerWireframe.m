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

#import "ListAccountWireframe.h"
#import "ListContactWireframe.h"

#import <Masonry.h>

@interface DemoAppContainerWireframe ()

- (void)removeControllerFromContainerController:(UIViewController *)childController;

- (void)insertViewController:(UIViewController *)viewController
               intoContainer:(UIView *)viewContainer
                ofController:(UIViewController *)containerController;

@end

@implementation DemoAppContainerWireframe

@synthesize presenter = _presenter;
@synthesize view = _view;

@synthesize listAccountWireframe = _listAccountWireframe;
@synthesize listContactWireframe = _listContactWireframe;

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

#pragma mark + Wireframe protocols
- (void)installModuleToWindow:(UIWindow *)window {
    window.rootViewController = self.view;
    [window makeKeyAndVisible];
}

- (void)presentListAccountInsideView:(UIView *)containerView {
    if (!self.listAccountWireframe) {
        self.listAccountWireframe = [ListAccountWireframe new];
    }
    
    [self.listAccountWireframe prepareViewController];
    
    [self insertViewController:self.listAccountWireframe.view
                 intoContainer:containerView
                  ofController:self.view];
}


- (void)presentListContactInsideView:(UIView *)containerView {
    if (!self.listContactWireframe) {
        self.listContactWireframe = [ListContactWireframe new];
    }
    
    [self.listContactWireframe prepareViewController];
    
    [self insertViewController:self.listContactWireframe.view
                 intoContainer:containerView
                  ofController:self.view];
}

- (void)hideAccountModules {
    [self removeControllerFromContainerController:self.listAccountWireframe.view];
#warning PENDING remove detail module
}

- (void)hideContactModules {
    [self removeControllerFromContainerController:self.listContactWireframe.view];
#warning PENDING remove detail module
}

- (void)reloadAccountModules {
    [self.listAccountWireframe reloadModule];
    #warning PENDING reload detail module
}

- (void)reloadContactModules {
    [self.listContactWireframe reloadModule];
#warning PENDING reload detail module
}

#pragma mark + Internal methods
- (void)insertViewController:(UIViewController *)viewController
               intoContainer:(UIView *)viewContainer
                ofController:(UIViewController *)containerController {
    if (viewController) {
        [viewContainer addSubview:viewController.view];
        [viewController.view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(viewContainer);
        }];
        [containerController addChildViewController:viewController];
    }
}

- (void)removeControllerFromContainerController:(UIViewController *)childController {
    [childController.view removeFromSuperview];
    [childController removeFromParentViewController];
}

@end
