//
//  RootViewController.h
//  MultiViewNavigationDemo
//
//  Created by Dustin Eichler on 6/29/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "View2ViewController.h"


@interface RootViewController : UITableViewController {
	View2ViewController *view2ViewController;
}

@property(nonatomic, retain) IBOutlet View2ViewController *view2ViewController;

@end
