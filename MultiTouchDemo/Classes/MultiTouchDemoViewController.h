//
//  MultiTouchDemoViewController.h
//  MultiTouchDemo
//
//  Created by Dustin Eichler on 6/26/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TouchView : UIView {
	UIImage *images[4];
	CGPoint offsets[4];
	int tracking[4];
}

@end


@interface MultiTouchDemoViewController : UIViewController {
	TouchView *touchView;
}

@end

