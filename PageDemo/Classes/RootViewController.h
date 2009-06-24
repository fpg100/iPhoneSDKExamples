//
//  RootViewController.h
//  PageDemo
//
//  Created by Dustin Eichler on 6/24/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>
#import	<UIKit/UITextView.h>

@interface RootViewController : UIViewController {
	UITextView *textView;
	UIBarButtonItem *credits;
	UISegmentedControl *segmentedControl;
	UINavigationController *navigationController;
	int page;
}

- (void)setPage;
- (id)initWithAppDelegate:(id)appDelegate;

@end

@interface CreditsViewController: UIViewController{
	UITextView *textView;
	UINavigationController *navigationController;
}

- (id)initWithAppDelegate:(id)appDelegate;

@end

