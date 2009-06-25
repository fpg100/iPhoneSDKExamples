//
//  TableDemoViewController.m
//  TableDemo
//
//  Created by Dustin Eichler on 6/25/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "TableDemoViewController.h"

@implementation TableDemoViewController

- (id)init{
	self = [super init];
	
	if (self != nil){
		/** Build a list of files*/
		[self reload];
		
		/** Initialize navigation bar buttons*/
		self.navigationItem.rightBarButtonItem = [[[UIBarButtonItem alloc]
												  initWithBarButtonSystemItem: UIBarButtonSystemItemEdit
												  target: self
												  action: @selector(reload)]
												  autorelease
		];
	}
	return self;
}

- (void)startEditing{
	
	[self.tableView setEditing: YES animated: YES];
	
	self.navigationItem.rightBarButtonItem = [[[UIBarButtonItem alloc]
											  initWithBarButtonSystemItem: UIBarButtonSystemItemDone 
											  target: self 
											  action: @selector(stopEditing)]
											  autorelease
	];
}

- (void)stopEditing{
	[self.tableView	setEditing: NO animated: YES];
	
	self.navigationItem.rightBarButtonItem = [[[UIBarButtonItem alloc]
											   initWithBarButtonSystemItem: UIBarButtonSystemItemDone 
											   target: self 
											   action: @selector(startEditing)]
											  autorelease
	];	
}

- (void)reload{
	NSDirectoryEnumerator *dirEnum;
	NSString *file;
	
	filelist = [[NSMutableArray alloc] init];
	dirEnum = [[NSFileManager defaultManager] enumeratorAtPath: NSHomeDirectory()];
	
	while ((file = [dirEnum nextObject])){
		[filelist addObject: file];
	}
	[self.tableView reloadData];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
	return [filelist count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
	NSString *CellIdentifier = [filelist objectAtIndex: [indexPath indexAtPosition: 1]];
	
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: CellIdentifier];
	
	if (cell == nil){
		cell = [[[UITableViewCell alloc] initWithFrame: CGRectZero reuseIdentifier: CellIdentifier]
				autorelease
		];
		cell.text = CellIdentifier;
		
		UIFont *font = [UIFont fontWithName: @"Courier" size: 12.0];
		cell.font = font;
	}
	return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle) editStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
	if (editStyle == UITableViewCellEditingStyleDelete){
		
		/** Delete call from data source*/
		UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:indexPath];
		
		for(int i = 0; i< [filelist count]; i++){
			if([cell.text isEqualToString: [filelist objectAtIndex: i]]){
				[filelist removeObjectAtIndex: i];
			}
		}
		
		/** Delete cell from table*/
		
		NSMutableArray *array = [[NSMutableArray alloc] init];
		[array addObject: indexPath];
		[self.tableView deleteRowsAtIndexPaths: array withRowAnimation: UITableViewRowAnimationTop];
	}
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
	UITableViewCell *cell = [self.tableView cellForRowAtIndexPath: indexPath];
	
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle: @"File Selected" 
											  message: [NSString stringWithFormat: @"You selected the file '%@'", cell.text] 
											  delegate: nil 
										      cancelButtonTitle: nil 
										      otherButtonTitles: @"Ok", nil];
	
	[alert show];
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; 
	// Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}


- (void)dealloc {
	[filelist release];
    [super dealloc];
}

@end
