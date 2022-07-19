//
//  CYLMainRootViewController.m
//  CYLTabBarController
//
//  Created by chenyilong on 7/3/2019.
//  Copyright © 2019 微博@iOS程序犭袁. All rights reserved.
//

#import "KLMainRootViewController.h"
#import "MainTabBarController.h"
//#import "CYLPlusButtonSubclass.h"

@interface KLMainRootViewController ()

@end

@implementation KLMainRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationBarHidden = YES;
    self.view.backgroundColor = [UIColor whiteColor];
//    [self createNewTabBar];
    [self createNewTabBarWithContext:@""];
}

/*
- (CYLTabBarController *)createNewTabBar {
    [CYLPlusButtonSubclass registerPlusButton];
    return [self createNewTabBarWithContext:nil];
}
 */
 

- (CYLTabBarController *)createNewTabBarWithContext:(NSString *)context {
    MainTabBarController *tabBarController = [[MainTabBarController alloc] initWithContext:context];
    self.viewControllers = @[tabBarController];
    return tabBarController;
}

@end
