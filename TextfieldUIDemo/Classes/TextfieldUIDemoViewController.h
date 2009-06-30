//
//  TextfieldUIDemoViewController.h
//  TextfieldUIDemo
//
//  Created by Dustin Eichler on 6/29/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TextfieldUIDemoViewController : UIViewController {
	IBOutlet UITextField *UIName;
	IBOutlet UILabel *UIHelloResponder;
}

@property(nonatomic, retain) IBOutlet UITextField *UIName;
@property(nonatomic, retain) IBOutlet UILabel *UIHelloResponder;

- (IBAction) updateText:(id)sender;

@end

