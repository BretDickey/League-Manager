//
//  TeamViewController.m
//  League Manager
//
//  Created by Bret Dickey on 3/10/11.
//  Copyright 2011 World Wide Group. All rights reserved.
//

#import "TeamViewController.h"
#import "RootViewController.h"

@implementation TeamViewController

@synthesize name;
@synthesize uniformColor;
@synthesize team;
@synthesize rootController;


#pragma mark - User Defined Methods
- (IBAction) save:(id)sender
{
    if(rootController != nil)
    {
        if(team != nil)
        {
            [team setValue:name.text forKey:@"name"];
            [team setValue:uniformColor.text forKey:@"uniformColor"];

            [rootController saveContent];
        }else
        {
            [rootController insertTeamName:name.text withUniformColor:uniformColor.text];
        }
    }
    
    [self dismissModalViewControllerAnimated:YES];
}

- (IBAction) cancel:(id)sender
{
    [self dismissModalViewControllerAnimated:YES];
}

-(id) initWithRootController:(RootViewController *)aRootController andTeam:(NSManagedObject *)aTeam
{
    if((self = [super init]))
    {
        self.rootController = aRootController;
        self.team = aTeam;
    }
    
    return self;
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
    //[team release];
    //[rootController release];
    
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
    if(team != nil)
    {
        name.text = [team valueForKey:@"name"];
        uniformColor.text = [team valueForKey:@"uniformColor"];
    }
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    self.name = nil;
    self.uniformColor = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

@end
