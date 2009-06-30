//
//  RootViewController.h
//  NSArrayXView
//
//  Created by Dustin Eichler on 6/30/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FruitViewController.h"

@interface RootViewController : UITableViewController {
	FruitViewController *fruitView;
}

@property(nonatomic, retain) FruitViewController *fruitView;

@end
