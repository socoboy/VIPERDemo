//
//  ListPresenter.h
//  VIPERDemo
//
//  Created by Tung Duong Thanh on 8/25/16.
//  Copyright © 2016 GEM. All rights reserved.
//

#import "ListModule.h"

@protocol ListPresenter <NSObject>

@property (nonatomic, weak) id<ListWireframe> wireframe;
@property (nonatomic, strong) UIViewController<ListView> *view;
@property (nonatomic, strong) id<ListViewModel> viewModel;
@property (nonatomic, strong) id<ListInteractor> interactor;

@end
