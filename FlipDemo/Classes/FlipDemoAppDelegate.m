//
//  FlipDemoAppDelegate.m
//  FlipDemo
//
//  Created by Dustin Eichler on 6/24/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "FlipDemoAppDelegate.h"
#import "RootViewController.h"


@implementation FlipDemoAppDelegate

@synthesize window;
@synthesize viewController;
@synthesize navigationController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {
	window = [[UIWindow alloc] initWithFrame: [[UIScreen mainScreen] bounds]];
	viewController = [[RootViewController alloc] init];
	navigationController = [[UINavigationController alloc] 
							initWithRootViewController: viewController];
	
	// Configure and show the window
	[window addSubview:[navigationController view]];
	[window makeKeyAndVisible];
}

- (void)dealloc {
	[navigationController release];
	[window release];
	[super dealloc];
}

@end
