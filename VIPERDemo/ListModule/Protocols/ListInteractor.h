//
//  ListInteractor.h
//  VIPERDemo
//
//  Created by Tung Duong Thanh on 8/25/16.
//  Copyright © 2016 GEM. All rights reserved.
//

#import "ListModule.h"

@protocol ListInteractor <NSObject>

@property (nonatomic, weak) id<ListPresenter> presenter;

@end
