//
//  ChecklistsAppDelegate.m
//  Checklists
//
//  Created by Lienne Nguyen on 11/16/13.
//  Copyright (c) 2013 Lienne Nguyen. All rights reserved.
//
#import "AllListsViewController.h"
#import "ChecklistsAppDelegate.h"
#import "DataModel.h"

@implementation ChecklistsAppDelegate
{
    DataModel *_dataModel;
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:10];
    UILocalNotification *localNotification = [[UILocalNotification alloc] init];
    localNotification.fireDate = date; localNotification.timeZone = [NSTimeZone defaultTimeZone];
    localNotification.alertBody = @"I am a local notification!";
    localNotification.soundName = UILocalNotificationDefaultSoundName;
    //[[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
    
        _dataModel = [[DataModel alloc] init];
        UINavigationController *navigationController = (UINavigationController *)self.window.rootViewController;
        AllListsViewController *controller = navigationController.viewControllers[0];
        controller.dataModel = _dataModel;
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)saveData {
    [_dataModel saveChecklists];
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    [self saveData];
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
   [self saveData];
}

- (void)application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification *)notification
{
    NSLog(@"didReceiveLocalNotification %@", notification);
}
@end
