//
//  DemoAppContainerViewModel.m
//  VIPERDemo
//
//  Created by Tung Duong Thanh on 8/27/16.
//  Copyright © 2016 GEM. All rights reserved.
//

#import "DemoAppContainerViewModel.h"

@implementation DemoAppContainerViewModel

@synthesize accountMode = _accountMode;

- (void)setAccountMode:(BOOL)accountMode {
    self.contactMode = !accountMode;
}

- (void)setContactMode:(BOOL)contactMode {
    _accountMode = !contactMode;
}

- (BOOL)isContactMode {
    return !_accountMode;
}



@end
