//
//  RootViewController.h
//  FlipDemo
//
//  Created by Dustin Eichler on 6/24/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <UIKit/UITextView.h>

@interface RootViewController : UIViewController {
	UITextView *textView[10];
	UIView *view;
	UIBarButtonItem *prev, *next;
	int page, lastViewed;
}

- (void)setPage;

@end
