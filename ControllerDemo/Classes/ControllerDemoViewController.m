//
//  ControllerDemoViewController.m
//  ControllerDemo
//
//  Created by Dustin Eichler on 6/24/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "ControllerDemoViewController.h"

@implementation ControllerDemoViewController

- (id)init{
	self = [super init];
	
	if (self != nil){
		/** Illustrate allocating some objects, even if we don't need to*/
		helloWorld = [[NSString alloc]initWithString:@"Hello, World!!!"];
		woahDizzy = [[NSString alloc]initWithString:@"Woah, I'm Dizzy!!!"];
	}
	return self;
}

// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView{
	[super loadView];
	
	textView = [[UITextView alloc]initWithFrame:
		[[UIScreen mainScreen]applicationFrame]
	];
	
	textView.text = helloWorld;
	self.view = textView;
}

 // Override to allow orientations other than the default portrait orientation. 
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
 // Return YES for supported orientations
 //return (interfaceOrientation == UIInterfaceOrientationPortrait);
	return YES;
}
 
- (void)didRotateFromInterfaceOrientation:
(UIInterfaceOrientation)fromIterfaceOrientation{
	textView.text = woahDizzy;
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad{
	[super  viewDidLoad];
	
	/** Add custom post-load code here*/
}

// Releases the view if it doesn't have a superview
// Release anything that's not essential, such as cached data
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; 
}


- (void)dealloc {
	[helloWorld release];
	[woahDizzy release];
	
	[textView release];
    [super dealloc];
}

@end
