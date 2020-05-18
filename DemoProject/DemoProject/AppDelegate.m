//
//  AppDelegate.m
//  DemoProject
//
//  Created by Mac on 2019/12/20.
//  Copyright © 2019 Mac. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    UINavigationController *rootNaviCon = [[UINavigationController alloc]initWithRootViewController:[[ViewController alloc]init]];
    rootNaviCon.view.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = rootNaviCon;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
