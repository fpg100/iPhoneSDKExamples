//
//  RootViewController.m
//  FlipDemo
//
//  Created by Dustin Eichler on 6/24/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <QuartzCore/CAAnimation.h>
#import "RootViewController.h"
#import "FlipDemoAppDelegate.h"


@implementation RootViewController

- (id)init{
	self = [super init];
	
	if(self != nil){
		/** Default page*/
		page = lastViewed = 5;
		
		/** Initialize Navigation Buttons*/
		prev = [[[UIBarButtonItem alloc]
				initWithTitle: @"Prev" 
				style: UIBarButtonItemStylePlain 
				target: self
				action: @selector(prevpage)]
				autorelease
		];
		
		self.navigationItem.leftBarButtonItem = prev;
		
		next = [[[UIBarButtonItem alloc]
				initWithTitle: @"Next" 
				style: UIBarButtonItemStylePlain
				 target: self
				 action: @selector(nextpage)]
				autorelease
		];
		
		self.navigationItem.rightBarButtonItem = next;
	}
	return self;
}

- (void)controlPressed:(id) sender{
	[self setPage];
}

- (void)setPage{
	/**
	Something wrong with this part of code, needs to be fixed.  
	 
	CATransition *myTransition = [CATransition animation];
	myTransition.timingFunction = UIViewAnimationCurveEaseInOut;
	myTransition.type = kCATransitionPush;

	if (page > lastViewed){
		myTransition.subtype = kCATransitionFromRight;
	} else {
		myTransition.subtype = kCATransitionFromLeft;
	}
	
	[self.view.layer addAnimation: myTransition forKey: nil];
	*/
	
	[self.view insertSubview: textView[page-1] atIndex: 0];
	[textView[lastViewed-1] removeFromSuperview];
	
	lastViewed = page;
	
	if (page == 1)
		prev.enabled = NO;
	else
		prev.enabled = YES;
	
	if (page == 10)
		next.enabled = NO;
	else
		next.enabled = YES;
}

- (void)prevpage{
	page--;
	[self setPage];
}

- (void)nextPage{
	page++;
	[self setPage];
}

- (void)loadView{
	CGRect bounds = [[UIScreen mainScreen] applicationFrame];
	[super loadView];
	
	view = [[UIView alloc] initWithFrame: bounds];
	bounds.origin.y = 0;
	
	for(int i = 0; i<10; i++){
		textView[i] = [[UITextView alloc] initWithFrame: bounds];
		textView[i].editable = NO;
		textView[i].text = [NSString stringWithFormat: @"Page %d", i+1];
	}
	
	self.view = view;
	[self.view addSubview: textView[4]];
}

- (void)dealloc {
	for(int i = 0; i< 10; i++){
		[textView[i] dealloc];
	}
	[next dealloc];
	[prev dealloc];
    [super dealloc];
}


@end

