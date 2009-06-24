//
//  HelloWorldAppDelegate.h
//  HelloWorld
//
//  Created by Dustin Eichler on 6/23/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainView: UIView
{
	UITextView *textView;
}


@end


@interface HelloWorldAppDelegate : NSObject <UIApplicationDelegate, UITextViewDelegate> {
	/** The one and only window in your application*/
    UIWindow *window;
	MainView *myMainView;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

