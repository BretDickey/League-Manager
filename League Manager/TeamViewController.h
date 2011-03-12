//
//  TeamViewController.h
//  League Manager
//
//  Created by Bret Dickey on 3/10/11.
//  Copyright 2011 World Wide Group. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RootViewController;

@interface TeamViewController : UIViewController {
    IBOutlet UITextField *name;
    IBOutlet UITextField *uniformColor;
    
    NSManagedObject *team;
    RootViewController *rootController;
}

@property (nonatomic, retain) UITextField *name;
@property (nonatomic, retain) UITextField *uniformColor;
@property (nonatomic, retain) NSManagedObject *team;
@property (nonatomic, retain) RootViewController *rootController;

- (IBAction) save:(id)sender;
- (IBAction) cancel:(id)sender;

-(id) initWithRootController:(RootViewController *)aRootController andTeam:(NSManagedObject *)aTeam;

@end
