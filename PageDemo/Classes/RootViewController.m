//
//  RootViewController.m
//  PageDemo
//
//  Created by Dustin Eichler on 6/24/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "RootViewController.h"
#import "PageDemoAppDelegate.h"

@implementation RootViewController

- (id)initWithAppDelegate:(id)appDelegate{
	self = [super init];
	
	if (self != nil){
		/** Initialize Navigation Buttons*/
		credits = [[[UIBarButtonItem alloc]
				   initWithTitle: @"Credits" 
				   style: UIBarButtonItemStylePlain 
				   target: appDelegate 
				   action: @selector(credits)]
				   autorelease];
		
		self.navigationItem.rightBarButtonItem = credits;
		
		segmentedControl = [[UISegmentedControl alloc] initWithItems: nil];
		segmentedControl.segmentedControlStyle = UISegmentedControlStyleBar;
		
		[segmentedControl insertSegmentWithTitle: @"Bunnies" atIndex: 0 
			animated: NO
		];
		
		[segmentedControl insertSegmentWithTitle: @"Ponies" atIndex: 1 
			animated: NO
		];
		
		[segmentedControl addTarget: self action: @selector(controlPressed:) 
			forControlEvents: UIControlEventValueChanged
		];
		
		self.navigationItem.titleView = segmentedControl;
		segmentedControl.selectedSegmentIndex = 0;
	}
	return self;
}

- (void)controlPressed:(id) sender{
	[self setPage];
}

- (void)setPage{
	int index = segmentedControl.selectedSegmentIndex;
	
	if (index == 0){
		textView.text = @"OMG Bunnies!";
	} else {
		textView.text = @"OMG Ponnies!";
	}
}

- (void)loadView{
	CGRect bounds = [[UIScreen mainScreen] applicationFrame];
	[super loadView];
	
	textView = [[UITextView alloc] initWithFrame: bounds];
	textView.editable  = NO;
	
	[self setPage];
	self.view = textView;
}

- (void)dealloc {
	[textView release];
    [super dealloc];
}

@end

@implementation CreditsViewController

- (id)initWithAppDelegate:(id) appDelegate{
	self = [super init];
	
	if (self != nil){
		/** Initialize Navigation Buttons*/
		UIBarButtonItem *back = [[[UIBarButtonItem alloc]
			initWithTitle: @"Back" style: UIBarButtonItemStylePlain target: appDelegate action: @selector(back)]
			autorelease];
		self.navigationItem.backBarButtonItem = back;
	}
	return self;
}

- (void)loadView{
	[super loadView];
	
	textView = [[UITextView alloc] initWithFrame: [
				[UIScreen mainScreen] applicationFrame]];
	
	textView.editable = NO;
	textView.text = @"iPhone SDK Application Development...blah blah";
	
	self.view = textView;
}

-(void)dealloc{
	[textView release];
	[super dealloc];
}

@end


