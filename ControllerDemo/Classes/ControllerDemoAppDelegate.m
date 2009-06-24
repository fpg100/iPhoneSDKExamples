//
//  ControllerDemoAppDelegate.m
//  ControllerDemo
//
//  Created by Dustin Eichler on 6/24/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "ControllerDemoAppDelegate.h"
#import "ControllerDemoViewController.h"

@implementation ControllerDemoAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
	CGRect screenBounds = [[UIScreen mainScreen] bounds];
	
	self.window = [[[UIWindow alloc]initWithFrame: screenBounds]
		autorelease
	];
	
	viewController = [[ControllerDemoViewController alloc] init];
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
