//
//  PinchMeAppDelegate.m
//  PinchMe
//
//  Created by Dustin Eichler on 6/26/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "PinchMeAppDelegate.h"
#import "PinchMeViewController.h"

@implementation PinchMeAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
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
