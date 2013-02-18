//
//  HelloView.m
//  NoNib
//
//  Created by Steve Zhang on 09-11-12.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "HelloView.h"


@implementation HelloView


- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        
		self.backgroundColor = [UIColor lightGrayColor];
		
		UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 30.0f)];
		label.text = @"Hello World";
		label.center = self.center;
		label.backgroundColor = [UIColor clearColor];
		label.textAlignment = UITextAlignmentCenter;
		
		[self addSubview:label];
    }
    return self;
}


- (void)drawRect:(CGRect)rect {
    // Drawing code
	
}


- (void)dealloc {
    [super dealloc];
}


@end
