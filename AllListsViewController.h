//
//  AllListsViewController.h
//  Checklists
//
//  Created by Lienne Nguyen on 11/18/13.
//  Copyright (c) 2013 Lienne Nguyen. All rights reserved.
// xxx

#import <UIKit/UIKit.h>
#import "ListDetailViewController.h"

@class DataModel;

@interface AllListsViewController : UITableViewController <ListDetailViewControllerDelegate, UINavigationControllerDelegate>

@property (nonatomic, strong) DataModel *dataModel;

@end