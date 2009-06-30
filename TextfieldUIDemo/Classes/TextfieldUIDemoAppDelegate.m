//
//  TextfieldUIDemoAppDelegate.m
//  TextfieldUIDemo
//
//  Created by Dustin Eichler on 6/29/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "TextfieldUIDemoAppDelegate.h"
#import "TextfieldUIDemoViewController.h"

@implementation TextfieldUIDemoAppDelegate

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
