//
//  TableDemoViewController.h
//  TableDemo
//
//  Created by Dustin Eichler on 6/25/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableDemoViewController : UITableViewController {
	NSMutableArray *filelist;
}

- (void) startEditing;
- (void) stopEditing;
- (void) reload;

@end

