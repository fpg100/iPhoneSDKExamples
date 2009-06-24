//
//  main.m
//  Demo
//
//  Created by Dustin Eichler on 6/23/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

int main(int argc, char *argv[]) {
    
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	/** Call with the name of our application delegate class*/
    //int retVal = UIApplicationMain(argc, argv, nil, nil); 
	int retVal = UIApplicationMain(argc, argv, nil, @"DemoAppDelegate");
    [pool release];
    return retVal;
}
