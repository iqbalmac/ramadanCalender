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

- (void)saveContext;


@end

