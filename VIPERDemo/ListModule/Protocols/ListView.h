//
//  ViewInteractor.h
//  VIPERDemo
//
//  Created by Tung Duong Thanh on 8/25/16.
//  Copyright © 2016 GEM. All rights reserved.
//

#import "ListModule.h"

@protocol ListView <NSObject>

@property (nonatomic, weak) id<ListPresenter> presenter;
@property (nonatomic, weak) id<ListViewModel> viewModel;

@end
