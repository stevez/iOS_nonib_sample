//
//  NoNibAppDelegate.m
//  NoNib
//
//  Created by Steve Zhang on 09-11-11.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "NoNibAppDelegate.h"
#import "RootViewController.h"

@implementation NoNibAppDelegate

@synthesize window;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    // Override point for customization after application launch
	window = [[UIWindow alloc] initWithFrame:[ [UIScreen mainScreen] bounds]];
	//window.backgroundColor = [UIColor redColor];
	
	RootViewController *root = [[RootViewController alloc] init];
	[window addSubview:root.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
