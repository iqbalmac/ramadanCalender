//
//  DetailViewController.h
//  Ramadan Calender
//
//  Created by TRITON Mobility Solutions on 27/05/17.
//  Copyright © 2017 TRITON Mobility Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *showingImage;
@property (strong, nonatomic) NSString * imageString;
- (IBAction)backButtonAction:(id)sender;

@end
