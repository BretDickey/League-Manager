//
//  PlayerViewController.m
//  League Manager
//
//  Created by Bret Dickey on 3/11/11.
//  Copyright 2011 World Wide Group. All rights reserved.
//

#import "PlayerViewController.h"
#import "RootViewController.h"

@implementation PlayerViewController

@synthesize rootController;
@synthesize team;
@synthesize player;

@synthesize firstName;
@synthesize lastName;
@synthesize email;

#pragma mark - User Defined Methods
- (id) initWithRootController:(RootViewController *)aRootController andWithTeam:(NSManagedObject *)aTeam andWithPlayer:(NSManagedObject *)aPlayer;
{
    if((self = [self init]))
    {
        self.rootController = aRootController;
        self.team = aTeam;
        self.player = aPlayer;
    }
    
    return self;
}

- (IBAction) savePlayer
{
    NSLog(@"savePlayer clicked");
}

- (IBAction) cancelPlayer
{
    [self dismissModalViewControllerAnimated:YES];
     NSLog(@"cancelPlayer clicked");
}

- (IBAction) deletePlayer
{
    NSLog(@"deletePlayer clicked");
}

#pragma mark - System Defined Methods
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [rootController release];
    [team release];
    [player release];
    
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

@end
