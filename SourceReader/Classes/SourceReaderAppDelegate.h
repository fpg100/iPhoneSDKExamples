//
//  SourceReaderAppDelegate.h
//  SourceReader
//
//  Created by Dustin Eichler on 6/24/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SourceReaderViewController;

@interface SourceReaderAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SourceReaderViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SourceReaderViewController *viewController;

@end

