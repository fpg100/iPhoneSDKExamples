//
//  Fruit.m
//  NSArrayXView
//
//  Created by Dustin Eichler on 6/30/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "Fruit.h"

@implementation Fruit

@synthesize name, description;

- (id)initWithName:(NSString *)n description:(NSString *)desc{
	self.name		 = n;
	self.description = desc;
	return self;
}

@end
