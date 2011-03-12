//
//  RootViewController.h
//  League Manager
//
//  Created by Bret Dickey on 3/10/11.
//  Copyright 2011 World Wide Group. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface RootViewController : UITableViewController <NSFetchedResultsControllerDelegate> {

}

@property (nonatomic, retain) NSFetchedResultsController *fetchedResultsController;
@property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;

- (void) showTeam;
- (void) insertTeamName:(NSString *) name withUniformColor:(NSString *)uniformColor;
- (void) saveContent;



@end
