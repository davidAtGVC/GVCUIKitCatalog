//
//  GVCAppDelegate.m
//  GVCCatalog
//
//  Created by David Aspinall on 2013-02-01.
//  Copyright (c) 2013 Global Village. All rights reserved.
//

#import "GVCAppDelegate.h"

@implementation GVCAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
	[super application:application didFinishLaunchingWithOptions:launchOptions];
	
    // Override point for customization after application launch.
	if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
	    UISplitViewController *splitViewController = (UISplitViewController *)self.window.rootViewController;
	    UINavigationController *navigationController = [splitViewController.viewControllers lastObject];
	    splitViewController.delegate = (id)navigationController.topViewController;
	}
    return YES;
}
							

@end
