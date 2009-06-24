//
//  SourceReaderViewController.m
//  SourceReader
//
//  Created by Dustin Eichler on 6/24/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIColor.h>
#import <UIKit/UIFont.h>
#import "SourceReaderViewController.h"

@implementation SourceReaderViewController

- (id)init{
	self = [super init];
	
	if (self != nil){
		/** Additional initialization code*/
	}
	return self;
}


// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
	CGRect bounds = [[UIScreen mainScreen] applicationFrame];
	
	[super loadView];
	
	textView = [[UITextView alloc] initWithFrame:bounds];
	
	UIColor *myBlue = [UIColor  colorWithRed: 0.0 green: 0.0 blue: 1.0 alpha: 1.0];
	textView.textColor = myBlue;
	
	UIFont *myFixed = [UIFont fontWithName:@"Courier new" size: 10.0];
	textView.font = myFixed;
	
	textView.editable = NO;
	
	NSURL *url = [NSURL URLWithString:@"http://www.oreilly.com"];
	NSString *pageData = [NSString stringWithContentsOfURL: url];
	textView.text = pageData;
	
	self.view = textView;
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}

// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    //return (interfaceOrientation == UIInterfaceOrientationPortrait);
	return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; 
	// Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}


- (void)dealloc {
	[textView dealloc];
    [super dealloc];
}

@end
