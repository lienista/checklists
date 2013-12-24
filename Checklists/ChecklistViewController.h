//
//  ChecklistsViewController.h
//  Checklists
//
//  Created by Lienne Nguyen on 11/16/13.
//  Copyright (c) 2013 Lienne Nguyen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ItemDetailViewController.h"

@class Checklist;

@interface ChecklistViewController : UITableViewController
<ItemDetailViewControllerDelegate>

@property (nonatomic, strong) Checklist *checklist;

@end
