//
//  AppDelegate.m
//  Ramadan Calender
//
//  Created by TRITON Mobility Solutions on 26/05/17.
//  Copyright © 2017 TRITON Mobility Solutions. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
@synthesize storyBoard, storyBoardName, isIPhone, navigationController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [self gettingSize];
    
    return YES;
}

-(void)gettingSize
{
    CGFloat height=self.window.frame.size.height;
    if(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone){
        if(height == 480) {
            
            NSString * Main_4s = [NSMutableString stringWithFormat:@"%@",@"Main_4S"];
            [[NSUserDefaults standardUserDefaults] setObject:Main_4s forKey:@"StoryBoardName"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
        }else if (height == 568) {
            NSString * Main_5 = [NSMutableString stringWithFormat:@"%@",@"Main"];
            [[NSUserDefaults standardUserDefaults] setObject:Main_5 forKey:@"StoryBoardName"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
        }else if (height == 736) {
            
            NSString * Main_6plus = [NSMutableString stringWithFormat:@"%@",@"Main_6S"];
            [[NSUserDefaults standardUserDefaults] setObject:Main_6plus forKey:@"StoryBoardName"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
        }
        else  { //if(height == 667)
            
            NSString * Main_6 = [NSMutableString stringWithFormat:@"%@",@"Main_6"];
            [[NSUserDefaults standardUserDefaults] setObject:Main_6 forKey:@"StoryBoardName"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
        }
        
        NSString * StoryBoard_name =[[NSUserDefaults standardUserDefaults]
                                     stringForKey:@"StoryBoardName"];
        storyBoardName = [UIStoryboard storyboardWithName:StoryBoard_name bundle:[NSBundle mainBundle]];
        
        
        UIViewController *initViewController = [storyBoardName instantiateInitialViewController];
        [self.window setRootViewController:initViewController];
    }
    
    //check iPhone or iPad
    NSString *deviceType = [UIDevice currentDevice].model;
    self.isIPhone = ([deviceType hasPrefix:@"iPhone"] || [deviceType hasPrefix:@"iPod"]);
    storyBoard = [self currentstoryBoard];
    
}
- (UIStoryboard *)currentstoryBoard
{
    CGFloat height = [UIScreen mainScreen].bounds.size.height;
    if(height == 480) {
        return [UIStoryboard storyboardWithName:@"Main_4S" bundle:[NSBundle mainBundle]];
    }else if (height == 568) {
        return [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    }else if (height == 736) {
        return [UIStoryboard storyboardWithName:@"Main_6S" bundle:[NSBundle mainBundle]];
    }else {
        return [UIStoryboard storyboardWithName:((self.isIPhone) ? @"Main" : @"Main_iPad")
                                         bundle:[NSBundle mainBundle]];
    }
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    // Saves changes in the application's managed object context before the application terminates.
    [self saveContext];
}


#pragma mark - Core Data stack

@synthesize persistentContainer = _persistentContainer;

- (NSPersistentContainer *)persistentContainer {
    // The persistent container for the application. This implementation creates and returns a container, having loaded the store for the application to it.
    @synchronized (self) {
        if (_persistentContainer == nil) {
            _persistentContainer = [[NSPersistentContainer alloc] initWithName:@"Ramadan_Calender"];
            [_persistentContainer loadPersistentStoresWithCompletionHandler:^(NSPersistentStoreDescription *storeDescription, NSError *error) {
                if (error != nil) {
                    // Replace this implementation with code to handle the error appropriately.
                    // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                    
                    /*
                     Typical reasons for an error here include:
                     * The parent directory does not exist, cannot be created, or disallows writing.
                     * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                     * The device is out of space.
                     * The store could not be migrated to the current model version.
                     Check the error message to determine what the actual problem was.
                    */
                    NSLog(@"Unresolved error %@, %@", error, error.userInfo);
                    abort();
                }
            }];
        }
    }
    
    return _persistentContainer;
}

#pragma mark - Core Data Saving support

- (void)saveContext {
    NSManagedObjectContext *context = self.persistentContainer.viewContext;
    NSError *error = nil;
    if ([context hasChanges] && ![context save:&error]) {
        // Replace this implementation with code to handle the error appropriately.
        // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
        NSLog(@"Unresolved error %@, %@", error, error.userInfo);
        abort();
    }
}

@end
