//
//  PlayerViewController.h
//  League Manager
//
//  Created by Bret Dickey on 3/11/11.
//  Copyright 2011 World Wide Group. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RootViewController;

@interface PlayerViewController : UIViewController {
    UITextField *firstName;
    UITextField *lastName;
    UITextField *email;
    
    RootViewController *rootController;
    NSManagedObject *team;
    NSManagedObject *player;
}

@property (nonatomic, retain) IBOutlet RootViewController *rootController;
@property (nonatomic, retain) IBOutlet NSManagedObject *team;
@property (nonatomic, retain) IBOutlet NSManagedObject *player;

@property (nonatomic, retain) IBOutlet UITextField *firstName;
@property (nonatomic, retain) IBOutlet UITextField *lastName;
@property (nonatomic, retain) IBOutlet UITextField *email;

- (IBAction) savePlayer;
- (IBAction) cancelPlayer;
- (IBAction) deletePlayer;

- (id) initWithRootController:(RootViewController *)aRootController andWithTeam:(NSManagedObject *)aTeam andWithPlayer:(NSManagedObject *) aPlayer;


@end
