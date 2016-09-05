//
//  ListWireframe.h
//  VIPERDemo
//
//  Created by Tung Duong Thanh on 8/25/16.
//  Copyright © 2016 GEM. All rights reserved.
//

#import "ListModule.h"

@protocol ListWireframe <NSObject>

@property (nonatomic, strong) id<ListPresenter> presenter;
@property (nonatomic, weak) UIViewController *view;

/**
 *  Prepare view controller config before install to another view
 */
- (void)prepareViewController;

- (void)reloadModule;
@end
