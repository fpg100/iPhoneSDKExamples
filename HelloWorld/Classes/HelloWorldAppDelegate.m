//
//  HelloWorldAppDelegate.m
//  HelloWorld
//
//  Created by Dustin Eichler on 6/23/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UITextView.h>
#import <UIKit/UIColor.h>
#import	<UIKit/UIFont.h>
#import "HelloWorldAppDelegate.h"

@implementation MainView

-(id)initWithFrame:(CGRect) rect {
	self = [super initWithFrame: rect];
	
	if (self != nil){
		textView = [[UITextView alloc] initWithFrame: rect];
		textView.text = @"hello world !!";
		
		[self addSubview: textView];
	}
	return self;
}

-(void)dealloc{
	[textView release];
	[super dealloc];
}

@end


@implementation HelloWorldAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(UIApplication *)application { 
	CGRect screenBounds = [[UIScreen mainScreen] applicationFrame];
	CGRect windowBounds	= screenBounds;
	windowBounds.origin.y = 0.0;
	
    /** Initialize the window*/
	self.window	= [[[UIWindow alloc] initWithFrame: screenBounds]
		autorelease
	];
	
	/** Iniitialize the view*/
	myMainView = [[MainView	alloc] initWithFrame: windowBounds];
	
	[window addSubview:myMainView];
    [window makeKeyAndVisible];
}


- (void)dealloc {
	[myMainView release];
    [window release];
    [super dealloc];
}


@end
