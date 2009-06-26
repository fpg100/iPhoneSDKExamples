//
//  TouchDemoAppDelegate.h
//  TouchDemo
//
//  Created by Dustin Eichler on 6/26/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TouchDemoViewController;

@interface TouchDemoAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    TouchDemoViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet TouchDemoViewController *viewController;

@end

