//
//  Fruit.h
//  NSArrayXView
//
//  Created by Dustin Eichler on 6/30/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Fruit : NSObject {
	NSString *name;
	NSString *description;
}

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *description;

- (id)initWithName:(NSString *)n description:(NSString *)desc;

@end
