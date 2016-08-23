//
//  AppDelegate.m
//  FlyImageIconView
//
//  Created by Ye Tong on 4/27/16.
//  Copyright © 2016 Augmn. All rights reserved.
//

#import "AppDelegate.h"
#import "RootViewController.h"
#import "TriditionTableViewCell.h"
#import "SDWebImageTableViewCell.h"
#import "FlyImageIconLayerTableViewCell.h"
#import "FlyImageIconViewTableViewCell.h"
#import "FlyImage.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	
	self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
	self.window.backgroundColor = [UIColor whiteColor];
	
	RootViewController *rootViewController = [[RootViewController alloc] init];
	rootViewController.suffix = @"_tn.jpg";
	rootViewController.cellsPerRow = 10;
	rootViewController.heightOfCell = self.window.bounds.size.width / rootViewController.cellsPerRow;
	rootViewController.activeIndex = 3;
	rootViewController.cells = @[ @{
									  @"class": [TriditionTableViewCell class],
									  @"title": @"UIKit"
									  },@{
									  @"class": [SDWebImageTableViewCell class],
									  @"title": @"SDWebImage"
									  }, @{
									  @"class": [FlyImageIconViewTableViewCell class],
									  @"title": @"FlyImageIconView"
									  }, @{
									  @"class": [FlyImageIconLayerTableViewCell class],
									  @"title": @"FlyImageIconLayer"
									  }];
	
	self.window.rootViewController = rootViewController;
	[self.window makeKeyAndVisible];
	
	return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
	// Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
	// Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
	// Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
	// If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
	// Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
	// Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
	// Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
