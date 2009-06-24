//
//  DemoAppDelegate.m
//  Demo
//
//  Created by Dustin Eichler on 6/23/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//
//
#import "DemoAppDelegate.h"

@implementation DemoAppDelegate

@synthesize window;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
	CGRect screenBounds = [[ UIScreen mainScreen ] applicationFrame ];
	CGRect windowBounds = screenBounds;
	windowBounds.origin.y = 0.0;
	/** Initialize the window */
	self.window = [[ UIWindow alloc ] initWithFrame: screenBounds];
	
	/** Initialize the view */
	myView = [[ UIView alloc ] initWithFrame: windowBounds];
	
	/** Anchor the view to the window */
	[ window addSubview: myView];
	
	/** Make the window key and visible */
	[ window makeKeyWindow];
	
    // Override point for customization after application launch
    [window makeKeyAndVisible];
}


- (void)dealloc {
	[myView release];
    [window release];
    [super dealloc];
}


@end
