//
//  TableDemoAppDelegate.h
//  TableDemo
//
//  Created by Dustin Eichler on 6/25/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TableDemoViewController;

@interface TableDemoAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    TableDemoViewController *viewController;
	UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet TableDemoViewController *viewController;

@end

