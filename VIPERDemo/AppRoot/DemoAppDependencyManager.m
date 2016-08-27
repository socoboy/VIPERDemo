//
//  DemoAppDependencyManager.m
//  VIPERDemo
//
//  Created by Tung Duong Thanh on 8/26/16.
//  Copyright © 2016 GEM. All rights reserved.
//

#import "DemoAppDependencyManager.h"
#import "DemoAppContainerWireframe.h"

@implementation DemoAppDependencyManager

+ (id<AppContainerWireframe>)appContainerModule {
    return [DemoAppContainerWireframe new];
}

@end
