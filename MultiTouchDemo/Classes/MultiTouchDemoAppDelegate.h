//
//  MultiTouchDemoAppDelegate.h
//  MultiTouchDemo
//
//  Created by Dustin Eichler on 6/26/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MultiTouchDemoViewController;

@interface MultiTouchDemoAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MultiTouchDemoViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MultiTouchDemoViewController *viewController;

@end

