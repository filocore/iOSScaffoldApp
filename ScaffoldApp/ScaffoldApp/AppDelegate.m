//
//  AppDelegate.m
//  ScaffoldApp
//
//  Created by xinxiang on 2022/7/14.
//

#import "AppDelegate.h"
#import "KLMainRootViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self initWindow];
    [self setUpNavigationBarAppearance];
    return YES;
}

- (void)initWindow {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.window makeKeyAndVisible];
    KLMainRootViewController *rootVC = [[KLMainRootViewController alloc] init];
    [self.window setRootViewController:rootVC];
}

/**
 *  设置navigationBar样式
 */
- (void)setUpNavigationBarAppearance {
    if (@available(iOS 13.0, *)) {
        UINavigationBarAppearance *appearance = [[UINavigationBarAppearance alloc] init];
        appearance.backgroundColor = [UIColor whiteColor];
        appearance.shadowColor = [UIColor whiteColor];
        UINavigationBar *navigationBar = [UINavigationBar appearance];
        navigationBar.standardAppearance = appearance;
        navigationBar.scrollEdgeAppearance = appearance;
    } else {
        // Fallback on earlier versions
    }
}

@end
