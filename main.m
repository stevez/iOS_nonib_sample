//
//  main.m
//  NoNib
//
//  Created by Steve Zhang on 09-11-11.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

int main(int argc, char *argv[]) {
    
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    int retVal = UIApplicationMain(argc, argv, nil, @"NoNibAppDelegate");
    [pool release];
    return retVal;
}

