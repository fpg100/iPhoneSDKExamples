//
//  NSArrayXViewAppDelegate.m
//  NSArrayXView
//
//  Created by Dustin Eichler on 6/30/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "NSArrayXViewAppDelegate.h"
#import "RootViewController.h"
#import "Fruit.h"

@implementation NSArrayXViewAppDelegate

@synthesize window;
@synthesize navigationController;
@synthesize fruits;


- (void)applicationDidFinishLaunching:(UIApplication *)application {
	Fruit *a = [[Fruit alloc] initWithName:@"Apple" description:@"I love Fuji Apples!!"];
	Fruit *o = [[Fruit alloc] initWithName:@"Orange" description:@"I love Big Oranges!!"];
	Fruit *p = [[Fruit alloc] initWithName:@"Pear" description:@"I love Purple Pears!!"];
	Fruit *s = [[Fruit alloc] initWithName:@"One" description:@"Not so random string!!"];
	Fruit *r = [[Fruit alloc] initWithName:@"Two" description:@"Not so random string!!"];
	Fruit *t = [[Fruit alloc] initWithName:@"Three" description:@"Not so random string!!"];
	Fruit *y = [[Fruit alloc] initWithName:@"Four" description:@"Not so random string!!"];
	Fruit *u = [[Fruit alloc] initWithName:@"Five" description:@"Not so random string!!"];
	Fruit *i = [[Fruit alloc] initWithName:@"Six" description:@"Not so random string!!"];
	Fruit *f = [[Fruit alloc] initWithName:@"Seven" description:@"Not so random string!!"];
	Fruit *h = [[Fruit alloc] initWithName:@"Eight" description:@"Not so random string!!"];
	self.fruits = [[NSMutableArray alloc] initWithObjects:a, o, p, s, r, t, y, u, i, f, h, nil];
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
