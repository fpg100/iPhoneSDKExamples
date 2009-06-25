//
//  DragDemoViewController.m
//  DragDemo
//
//  Created by Dustin Eichler on 6/25/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "DragDemoViewController.h"

@implementation DragDemoViewController

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
	UITouch	*touch = [touches anyObject];
	CGPoint location = [touch locationInView: self.view];
	NSUInteger taps = [touch tapCount];
	
	[super touchesBegan: touches withEvent: event];
	
	NSLog(@"Tap BEGIN at %f, %f TAP count: %d", location.x, location.y, taps);
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
	UITouch *touch = [touches anyObject];
	CGPoint oldLocation = [touch previousLocationInView: self.view];
	CGPoint location = [touch locationInView: self.view];
	
	[super touchesMoved: touches withEvent: event];
	
	NSLog(@"Finger MOVED from %f, %f to %f, %f", oldLocation.x, oldLocation.y, location.x, location.y);
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
	UITouch *touch  = [touches anyObject];
	CGPoint location = [touch locationInView: self.view];
	
	[super touchesEnded: touches withEvent: event];
	NSLog(@"Tap ENDED at %f, %f", location.x, location.y);
}

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    self.view.multipleTouchEnabled = YES;
	[super viewDidLoad];
}



/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}


- (void)dealloc {
    [super dealloc];
}

@end
