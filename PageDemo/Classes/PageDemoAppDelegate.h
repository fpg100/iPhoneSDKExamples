//
//  PageDemoAppDelegate.h
//  PageDemo
//
//  Created by Dustin Eichler on 6/24/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RootViewController.h"

@interface PageDemoAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	RootViewController *viewController;
	CreditsViewController *creditsViewController;
    UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet RootViewController *viewController;
@property (nonatomic, retain) IBOutlet CreditsViewController *creditsViewController;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end

