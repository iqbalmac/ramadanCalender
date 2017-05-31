//
//  AppDelegate.h
//  Ramadan Calender
//
//  Created by TRITON Mobility Solutions on 26/05/17.
//  Copyright © 2017 TRITON Mobility Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;
@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;
@property (nonatomic, strong) UIStoryboard *storyBoard;
@property (nonatomic, strong) UIStoryboard *storyBoardName;
@property (nonatomic, assign) BOOL isIPhone;
@property (strong, nonatomic) UINavigationController *navigationController;
-(void)openActiveSessionWithPermissions:(NSArray *)permissions allowLoginUI:(BOOL)allowLoginUI;

@end

