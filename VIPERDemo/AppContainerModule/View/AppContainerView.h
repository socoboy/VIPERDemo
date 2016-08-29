//
//  AppContainerProtocol.h
//  VIPERDemo
//
//  Created by Tung Duong Thanh on 8/25/16.
//  Copyright © 2016 GEM. All rights reserved.
//

#import "AppContainerModule.h"

@protocol AppContainerView <NSObject>

@property (nonatomic, weak) id<AppContainerPresenter> presenter;
@property (nonatomic, weak) id<AppContainerViewModel> viewModel;

- (void)reloadViewWithUpdatedState;
@end
