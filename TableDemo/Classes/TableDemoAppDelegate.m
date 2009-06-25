//
//  TableDemoAppDelegate.m
//  TableDemo
//
//  Created by Dustin Eichler on 6/25/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "TableDemoAppDelegate.h"
#import "TableDemoViewController.h"

@implementation TableDemoAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
	
	self.window = [[[UIWindow alloc]initWithFrame: screenBounds] autorelease];
	viewController = [[TableDemoViewController alloc] init];
	navigationController = [[UINavigationController alloc] initWithRootViewController: viewController];
	
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
