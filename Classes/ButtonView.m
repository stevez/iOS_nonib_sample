//
//  ButtonView.m
//  NoNib
//
//  Created by Steve Zhang on 09-11-12.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "ButtonView.h"


@implementation ButtonView
@synthesize label;

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
		
        self.backgroundColor = [UIColor whiteColor];
		
		
		self.label = [[UILabel alloc] initWithFrame:CGRectMake(10, 180, 320.0f, 30.0f)];
		label.text = @"Please pressed the button.";
		
		label.backgroundColor = [UIColor clearColor];
		label.textAlignment = UITextAlignmentCenter;
		
		[self addSubview:label]; 
		
				
		CGRect buttonFrame = CGRectMake(60, 209.0, 234.0, 37.0);;
		
		
		UIButton *buttonPress;
		buttonPress = [UIButton buttonWithType:UIButtonTypeRoundedRect];
		buttonPress.frame=buttonFrame;
		
		buttonPress.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
		buttonPress.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
		
		[buttonPress setTitle:@"PressMe" forState:UIControlStateNormal];	
		
		[buttonPress addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
		
		[self addSubview:buttonPress];
	   
		
	}
    return self;
}


- (void)drawRect:(CGRect)rect {
    // Drawing code
}


- (void)dealloc {
    [super dealloc];
}

-(void)buttonClicked:(id)sender
{
	UIButton *button = (UIButton *)sender;
	NSString *text = button.currentTitle;
	
	
	NSString *string = [ [NSString alloc] initWithFormat:@"Button %@ pressed.",text];
	
     NSLog(@"button clicked. button title:%@", text);
	
	self.label.text = string;
	[string release];
	
}

@end
