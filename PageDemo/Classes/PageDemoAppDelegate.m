//
//  PageDemoAppDelegate.m
//  PageDemo
//
//  Created by Dustin Eichler on 6/24/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "PageDemoAppDelegate.h"
#import "RootViewController.h"


@implementation PageDemoAppDelegate

@synthesize window;
@synthesize viewController;
@synthesize navigationController;
@synthesize creditsViewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {
	
	window = [[UIWindow alloc] initWithFrame: [
		[UIScreen mainScreen] bounds]
	];
	
	viewController = [[RootViewController alloc] initWithAppDelegate: self];
	
	creditsViewController = [[CreditsViewController alloc]
		initWithAppDelegate: self
	];
	
	navigationController = [[UINavigationController alloc]
		initWithRootViewController: viewController
	];
	
	
	// Configure and show the window
	[window addSubview:[navigationController view]];
	[window makeKeyAndVisible];
}

- (void)dealloc {
	[navigationController release];
	[viewController release];
	[creditsViewController release];
	[window release];
	[super dealloc];
}

- (void)credits {
	[navigationController pushViewController: creditsViewController 
		animated: YES
	];
}

- (void)back {
	[navigationController popViewControllerAnimated: YES];
}

@end
