//
//  SMLoginViewController.m
//  jabberClient
//
//  Created by cesarerocchi on 7/16/11.
//  Copyright 2011 studiomagnolia.com. All rights reserved.
//

#import "SMLoginViewController.h"


@implementation SMLoginViewController

@synthesize loginField, passwordField;


- (void) viewDidLoad {
	
    
#define HOSTURL  @"206.225.87.39"
#define HOSTPORT @"5222"
#define HOSTNAME @"@206-225-87-39.phx.dedicated.codero.com"
    
#define UNIQUERESOURCE @"morfit"
#define GROUPCHAT @"@conference.69-64-89-24.phx.dedicated.codero.com"
    
	[super viewDidLoad];
	self.loginField.text = @"alterego@HOSTNAME";
    self.loginField.text = [NSString stringWithFormat:@"karthikde@%@",HOSTNAME];
	self.passwordField.text = @"ciao";
	
}

- (IBAction) login {
	
	[[NSUserDefaults standardUserDefaults] setObject:self.loginField.text forKey:@"userID"];
	[[NSUserDefaults standardUserDefaults] setObject:self.passwordField.text forKey:@"userPassword"];
	[[NSUserDefaults standardUserDefaults] synchronize];
	
	[self dismissModalViewControllerAnimated:YES];
	
}

- (IBAction) hideLogin {
	
    [self dismissModalViewControllerAnimated:YES];
    
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	
	[loginField dealloc];
	[passwordField dealloc];
    [super dealloc];
}


@end
