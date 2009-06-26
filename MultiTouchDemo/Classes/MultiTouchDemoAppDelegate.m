//
//  MultiTouchDemoAppDelegate.m
//  MultiTouchDemo
//
//  Created by Dustin Eichler on 6/26/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "MultiTouchDemoAppDelegate.h"
#import "MultiTouchDemoViewController.h"


@implementation MultiTouchDemoAppDelegate

@synthesize window;
@synthesize viewController;

- (void)applicationDidFinishLaunching:(UIApplication *)application{
	CGRect screenbounds = [[UIScreen mainScreen] applicationFrame];
	
	self.window  = [[[UIWindow alloc] initWithFrame: screenbounds]
					autorelease
					];
	
	viewController = [[MultiTouchDemoViewController alloc] init];
	
	[ window addSubview: viewController.view];
	[ window makeKeyAndVisible];
}

- (void)dealloc {
	[viewController release];
	[window release];
    [super dealloc];
}

@end
