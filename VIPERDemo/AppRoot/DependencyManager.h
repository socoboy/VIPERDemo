//
//  DependencyManager.h
//  VIPERDemo
//
//  Created by Tung Duong Thanh on 8/26/16.
//  Copyright © 2016 GEM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppContainerWireframe.h"

@protocol DependencyManager <NSObject>

+ (id<AppContainerWireframe>)appContainerModule;

@end
