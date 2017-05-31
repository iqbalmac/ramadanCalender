//
//  DetailViewController.m
//  Ramadan Calender
//
//  Created by TRITON Mobility Solutions on 27/05/17.
//  Copyright © 2017 TRITON Mobility Solutions. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _showingImage.image = [UIImage imageNamed:_imageString];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



- (IBAction)backButtonAction:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
    
}
@end
