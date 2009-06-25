//
//  RootViewController.m
//  EndWorld
//
//  Created by Dustin Eichler on 6/25/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "RootViewController.h"
#import "EndWorldAppDelegate.h"


@implementation RootViewController

- (id)init{
	self = [super init];
	
	if (self != nil){
		/** Initialize Navigation buttons*/
		
		endWorld = [[[UIBarButtonItem alloc]
					initWithTitle: @"End World" 
					style: UIBarButtonItemStyleDone 
					target: self 
					action: @selector(endWorld)]
					autorelease];
		
		self.navigationItem.rightBarButtonItem = endWorld;
	}
	return self;
}

- (void)loadView{
	CGRect bounds = [[UIScreen mainScreen] applicationFrame];
	[super loadView];
	
	textView = [[UITextView alloc] initWithFrame: bounds];
	textView.editable = YES;
	textView.text = @"Enter any last words here, then press End World";
	self.view = textView;
}

- (void)endWorld{
	endWorldAlert = [[UIAlertView alloc]
					 initWithTitle: @"End the World" 
					 message: @"Warning: You are about to end the world" 
					 delegate: self 
					 cancelButtonTitle: @"My bad" 
					 otherButtonTitles:@"Ok", nil];
	
	endWorldAlert.delegate = self;
	[endWorldAlert show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex: (NSInteger)buttonIndex{
	if (alertView == endWorldAlert){
		NSLog(@"Button %d pressed", buttonIndex);
		UIAlertView *myAlert = [[UIAlertView alloc]
								initWithTitle: @"End the World" 
								message: nil 
								delegate: self
								cancelButtonTitle: nil 
								otherButtonTitles: @"Ok", nil];
		if (buttonIndex == 0){
			myAlert.message = @"Be more careful next time!";
		} else if (buttonIndex == 1) {
			myAlert.message = @"You must be connected to a WiFi network to end the World";
		} else {
			myAlert.message = @"Invalid Button";
		}
		[myAlert show];
	}
	[alertView release];
}

- (void)dealloc {
	[textView dealloc];
	[endWorld dealloc];
    [super dealloc];
}


@end

