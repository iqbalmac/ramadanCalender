//
//  splashScreenVC.m
//  Ramadan Calender
//
//  Created by TRITON Mobility Solutions on 27/05/17.
//  Copyright © 2017 TRITON Mobility Solutions. All rights reserved.
//

#import "splashScreenVC.h"

@interface splashScreenVC ()

@end

@implementation splashScreenVC

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void)viewDidAppear:(BOOL)animated
{
    [self PresentView:@"ViewController"];
    
//    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
//    {
//        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:
//                                    @"Main_iPad" bundle:[NSBundle mainBundle]];
//        UIViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
//        [self presentViewController:viewController animated:NO completion:nil];
//    }
//      else
//    {
//        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:
//                                    [[NSUserDefaults standardUserDefaults]
//                                     stringForKey:@"StoryBoardName"] bundle:[NSBundle mainBundle]];
//        UIViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
//        [self presentViewController:viewController animated:NO completion:nil];
//    }

}
-(void)PresentView :(NSString *) string
{
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:
                                    @"Main_iPad" bundle:[NSBundle mainBundle]];
        UIViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:string];
        viewController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
        [self presentViewController:viewController animated:NO completion:nil];
    }
    else {
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:
                                    [[NSUserDefaults standardUserDefaults]
                                     stringForKey:@"StoryBoardName"] bundle:[NSBundle mainBundle]];
        UIViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:string];
        viewController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
        [self presentViewController:viewController animated:NO completion:nil];
    }
}


@end
