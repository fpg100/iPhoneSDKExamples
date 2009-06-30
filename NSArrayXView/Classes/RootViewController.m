//
//  RootViewController.m
//  NSArrayXView
//
//  Created by Dustin Eichler on 6/30/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "RootViewController.h"
#import "NSArrayXViewAppDelegate.h"
#import "Fruit.h"


@implementation RootViewController
@synthesize fruitView;

- (void)viewDidLoad {
    [super viewDidLoad];

    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
	self.title = @"Home";
}


/*
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}
*/
/*
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}
*/
/*
- (void)viewWillDisappear:(BOOL)animated {
	[super viewWillDisappear:animated];
}
*/
/*
- (void)viewDidDisappear:(BOOL)animated {
	[super viewDidDisappear:animated];
}
*/

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}

#pragma mark Table view methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	NSArrayXViewAppDelegate *appDelegate = (NSArrayXViewAppDelegate *)[[UIApplication sharedApplication] delegate];
	
    return appDelegate.fruits.count;
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:CellIdentifier] autorelease];
    }
    
	NSArrayXViewAppDelegate *appDelegate = (NSArrayXViewAppDelegate *)[[UIApplication sharedApplication] delegate];
	Fruit *f = (Fruit *)[appDelegate.fruits objectAtIndex:indexPath.row];
	[cell setText: f.name];
    // Set up the cell...

    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	//Navigation Logic...
	NSArrayXViewAppDelegate *appDelegate = (NSArrayXViewAppDelegate *)[[UIApplication sharedApplication] delegate];
	Fruit *fruit = (Fruit *)[appDelegate.fruits objectAtIndex:indexPath.row];
	if(self.fruitView == nil){
		FruitViewController *viewController = [[FruitViewController alloc] initWithNibName:@"FruitViewController" bundle:[NSBundle mainBundle]];
		self.fruitView = viewController;
		[viewController release];
	}
	
	[self.navigationController pushViewController:self.fruitView animated:YES];
	self.fruitView.title = [fruit name];
	[self.fruitView.fruitDescription setText:[fruit description]];
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:YES];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/


/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


- (void)dealloc {
	[fruitView release];
    [super dealloc];
}


@end

