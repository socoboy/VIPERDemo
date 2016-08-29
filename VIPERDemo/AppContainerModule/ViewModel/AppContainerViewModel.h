//
//  AppContainerViewModel.h
//  VIPERDemo
//
//  Created by Tung Duong Thanh on 8/27/16.
//  Copyright © 2016 GEM. All rights reserved.
//

#import "AppContainerModule.h"

@protocol AppContainerViewModel <NSObject>

@property (nonatomic, getter=isAccountMode) BOOL accountMode;
@property (nonatomic, getter=isContactMode) BOOL contactMode;

@end
