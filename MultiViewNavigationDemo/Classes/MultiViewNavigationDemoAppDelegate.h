//
//  MultiViewNavigationDemoAppDelegate.h
//  MultiViewNavigationDemo
//
//  Created by Dustin Eichler on 6/29/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MultiViewNavigationDemoAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end

