//
//  MultiViewNavigationDemoAppDelegate.m
//  MultiViewNavigationDemo
//
//  Created by Dustin Eichler on 6/29/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "MultiViewNavigationDemoAppDelegate.h"
#import "RootViewController.h"


@implementation MultiViewNavigationDemoAppDelegate

@synthesize window;
@synthesize navigationController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {
	
	// Configure and show the window
	[window addSubview:[navigationController view]];
	[window makeKeyAndVisible];
}


- (void)applicationWillTerminate:(UIApplication *)application {
	// Save data if appropriate
}


- (void)dealloc {
	[navigationController release];
	[window release];
	[super dealloc];
}

@end
