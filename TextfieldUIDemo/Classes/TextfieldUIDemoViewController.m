//
//  TextfieldUIDemoViewController.m
//  TextfieldUIDemo
//
//  Created by Dustin Eichler on 6/29/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "TextfieldUIDemoViewController.h"

@implementation TextfieldUIDemoViewController

@synthesize UIName; 
@synthesize UIHelloResponder;

- (IBAction) updateText:(id)sender{
	NSString *text;
	if([UIName.text length] == 0){
		text = @"Please enter your name!";
	} else {
		text  = [[NSString alloc] initWithFormat:@"Hello %@!", UIName.text];
	}
	
	UIHelloResponder.text = text;
	
	[text release];
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}


- (void)dealloc {
	[UIHelloResponder release];
	[UIName release];
    [super dealloc];
}

@end
