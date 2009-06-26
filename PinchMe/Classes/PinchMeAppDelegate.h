//
//  PinchMeAppDelegate.h
//  PinchMe
//
//  Created by Dustin Eichler on 6/26/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PinchMeViewController;

@interface PinchMeAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    PinchMeViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet PinchMeViewController *viewController;

@end

