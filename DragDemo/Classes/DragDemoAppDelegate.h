//
//  DragDemoAppDelegate.h
//  DragDemo
//
//  Created by Dustin Eichler on 6/25/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DragDemoViewController;

@interface DragDemoAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    DragDemoViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet DragDemoViewController *viewController;

@end

