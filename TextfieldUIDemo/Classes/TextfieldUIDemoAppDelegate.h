//
//  TextfieldUIDemoAppDelegate.h
//  TextfieldUIDemo
//
//  Created by Dustin Eichler on 6/29/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TextfieldUIDemoViewController;

@interface TextfieldUIDemoAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    TextfieldUIDemoViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet TextfieldUIDemoViewController *viewController;

@end

