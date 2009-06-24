//
//  DemoAppDelegate.h
//  Demo
//
//  Created by Dustin Eichler on 6/23/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DemoAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	
	UIView *myView;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

