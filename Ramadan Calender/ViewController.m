//
//  ViewController.m
//  Ramadan Calender
//
//  Created by TRITON Mobility Solutions on 26/05/17.
//  Copyright © 2017 TRITON Mobility Solutions. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray * Numbers,*image;
    
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Numbers = [NSArray arrayWithObjects:@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"11",@"12",@"13",@"14",@"15",@"16",@"17",@"18",@"19",@"20",@"21",@"22",@"23",@"24",@"25",@"26",@"27",@"28",@"29",@"30", nil];
    
    image = [NSArray arrayWithObjects:@"01.jpg",@"02.jpg",@"03.jpg",@"04.jpg",@"05.jpg",@"06.jpg",@"07.jpg",@"08.jpg",@"09.jpg",@"10.jpg",@"11.jpg",@"12.jpg",@"13.jpg",@"14.jpg",@"15.jpg",@"16.jpg",@"17.jpg",@"18.jpg",@"19.jpg",@"20.jpg",@"21.jpg",@"22.jpg",@"23.jpg",@"24.jpg",@"25.jpg",@"26.jpg",@"27.jpg",@"28.jpg",@"29.jpg",@"30.jpg", nil];
}

#pragma  mark - Collection view Delegate

-(NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return  1;
}
-(NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return Numbers.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"collectionCell";
    
    collectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    cell.NumberLabel.text = [Numbers objectAtIndex:indexPath.row];

    return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
    {
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:
                                    @"Main_iPad" bundle:[NSBundle mainBundle]];
        DetailViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:@"DetailViewController"];
        viewController.imageString = [image objectAtIndex:indexPath.row];
        [self.navigationController pushViewController:viewController animated:YES];
    }
      else
    {
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:
                                    [[NSUserDefaults standardUserDefaults]
                                     stringForKey:@"StoryBoardName"] bundle:[NSBundle mainBundle]];
        DetailViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:@"DetailViewController"];
        viewController.imageString = [image objectAtIndex:indexPath.row];
        [self.navigationController pushViewController:viewController animated:YES];
    }

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
