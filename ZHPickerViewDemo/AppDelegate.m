//
//  AppDelegate.m
//  ZHPickerViewDemo
//
//  Created by 智慧 on 2017/8/11.
//  Copyright © 2017年 renb. All rights reserved.
//

#import "AppDelegate.h"
#import "TestViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [self setupRootViewController];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)setupRootViewController {
    TestViewController *testVC = [[TestViewController alloc]init];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:testVC];
    // 设置状态栏前景色为白色
    nav.navigationBar.barStyle = UIBarStyleBlack;
    // 设置navigationBar背景颜色
    nav.navigationBar.barTintColor = [UIColor colorWithRed:253 / 255.0 green:96 / 255.0 blue:134 / 255.0 alpha:1.0f];
    // 设置navigationBar所有子控件的颜色
    nav.navigationBar.tintColor = [UIColor whiteColor];
    // 设置 title 颜色
    [nav.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    self.window.rootViewController = nav;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
