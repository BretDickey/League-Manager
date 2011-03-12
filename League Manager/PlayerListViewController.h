//
//  PlayerListViewController.h
//  League Manager
//
//  Created by Bret Dickey on 3/10/11.
//  Copyright 2011 World Wide Group. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RootViewController;

@interface PlayerListViewController : UITableViewController {
    NSManagedObject *team;
    RootViewController *rootController;
}

@property (nonatomic, retain) NSManagedObject *team;
@property (nonatomic, retain) RootViewController *rootController;

- (id) initWithRootController:(RootViewController *)aRootController andWithTeam:(NSManagedObject *)aTeam;

- (void)showPlayerView;
- (NSArray *) sortPlayer;

@end
