//
//  AddItemViewController.h
//  Checklists
//
//  Created by Lien Nguyen on 11/17/13.
//  Copyright (c) 2013 Lien Nguyen. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AddItemViewController;
@class ChecklistItem;

@protocol AddItemViewControllerDelegate <NSObject>
- (void)addItemViewControllerDidCancel:(AddItemViewController *)controller;
- (void)addItemViewController:(AddItemViewController *)controller
          didFinishAddingItem:(ChecklistItem *)item;
- (void)addItemViewController:(AddItemViewController *)controller
         didFinishEditingItem:(ChecklistItem *)item;
@end

@interface AddItemViewController : UITableViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneBarButton;
@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (nonatomic, weak) id <AddItemViewControllerDelegate> delegate;
@property (nonatomic, strong) ChecklistItem *itemToEdit;

- (IBAction)cancel;
- (IBAction)done;

@end
