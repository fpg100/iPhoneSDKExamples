//
//  RootViewController.h
//  EndWorld
//
//  Created by Dustin Eichler on 6/25/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <UIKit/UITextView.h>

@interface RootViewController : UIViewController {
	UITextView *textView;
	UIBarButtonItem *endWorld;
	UIAlertView *endWorldAlert;
}

- (id)init;
- (void)endworld;

@end
