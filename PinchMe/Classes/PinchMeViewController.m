//
//  PinchMeViewController.m
//  PinchMe
//
//  Created by Dustin Eichler on 6/26/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "PinchMeViewController.h"

@implementation PinchMeViewController


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
    [super viewDidLoad];
	[self.view setMultipleTouchEnabled: YES];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
	UITouch *touch = [touches anyObject];
	CGPoint location = [touch locationInView: self.view];
	NSUInteger taps = [touch tapCount];
	
	[super touchesBegan: touches withEvent: event];
	
	NSLog(@"Tap BEGAN at %f, %f TAP count: %d", location.x, location.y, taps);
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
	int finger = 0;
	NSEnumerator *enumerator = [touches objectEnumerator];
	UITouch *touch;
	CGPoint location[2];
	while((touch = [enumerator nextObject]) && finger < 2){
		location[finger] = [touch locationInView: self.view];
		NSLog(@"Finger %d moved: %fx%f", finger+1, location[finger].x, location[finger].y);
		finger++;
	}
	
	if (finger == 2){
		CGPoint scale;
		scale.x = fabs(location[0].x - location[1].x);
		scale.y = fabs(location[0].y - location[1].y);
		NSLog(@"Scaling: %.of x %.of", scale.x, scale.y);
	}
	[super touchesMoved: touches withEvent: event];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
	UITouch *touch = [touches anyObject];
	CGPoint location = [touch locationInView: self.view];
	
	[super touchesEnded: touches withEvent: event];
	NSLog(@"Tap ENDED at %f, %f", location.x, location.y);
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
