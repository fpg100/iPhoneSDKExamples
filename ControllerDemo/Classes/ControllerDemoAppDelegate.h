//
//  ControllerDemoAppDelegate.h
//  ControllerDemo
//
//  Created by Dustin Eichler on 6/24/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ControllerDemoViewController;

@interface ControllerDemoAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ControllerDemoViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ControllerDemoViewController *viewController;

@end

