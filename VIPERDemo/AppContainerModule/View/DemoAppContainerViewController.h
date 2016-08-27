//
//  DemoAppContainerView.h
//  VIPERDemo
//
//  Created by Tung Duong Thanh on 8/26/16.
//  Copyright © 2016 GEM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppContainerView.h"

@interface DemoAppContainerViewController : UIViewController <AppContainerView>

@property (nonatomic, weak) IBOutlet UIView *listContainer;
@property (nonatomic, weak) IBOutlet UIView *detailContainer;

@property (nonatomic, weak) IBOutlet UIButton *accountBtn;
@property (nonatomic, weak) IBOutlet UIButton *contactBtn;

- (IBAction)accountBtnAction:(id)sender;
- (IBAction)contactBtnAction:(id)sender;

@end
