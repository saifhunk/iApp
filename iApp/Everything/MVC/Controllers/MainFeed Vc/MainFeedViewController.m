//
//  MainFeedViewController.m
//  iApp
//
//  Created by Saif Chaudhary on 04/06/1937 SAKA.
//  Copyright (c) 1937 SAKA Saif Chaudhary. All rights reserved.

#import "MainFeedViewController.h"



@interface MainFeedViewController ()


@end
#define Height4s 480

@implementation MainFeedViewController


#pragma mark - ViewHeirarchy

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - ViewHeirarchy


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    if (_collectionViewTop == collectionView) {
        
        return 10;
    }
    else
    {
        return 10;
    }
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (_collectionViewTop == collectionView) {
        
        
        MainFeedCollectionViewCellTop * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MainFeedCollectionViewCellTop" forIndexPath:indexPath];
        CGRect height = [[UIScreen mainScreen]bounds];
        
        if (Height4s == height.size.height) {
            
            cell.constraintBtnEye.constant = 10;
        }
        cell.indexpath = indexPath;
        cell.DelegateJournlist = self;
        return cell;
        
    }
    
    else
    {
        MainFeedCollectionViewCellBottom * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MainFeedCollectionViewCellBottom" forIndexPath:indexPath];
        return cell;
        
    }
    
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"SeguePost" sender:self];
}


- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (_collectionViewTop == collectionView) {
        
        
        
        return CGSizeMake(self.collectionViewTop.frame.size.width,self.collectionViewTop.frame.size.height);
    }
    else
    {
        return CGSizeMake(self.collectionViewBottom.frame.size.width/2.2,self.collectionViewBottom.frame.size.height);
    }
    
}

#pragma mark - Custom Delegate

-(void)BtnJournlistClicked:(NSIndexPath *)indepath
{
    [self performSegueWithIdentifier:@"SegueJournalist" sender:self];
}

#pragma mark - IBAction

- (IBAction)actionBtnGroup:(id)sender {
}

- (IBAction)actionBtnProfile:(id)sender {
}

- (IBAction)actionBnFilter:(id)sender {
}

- (IBAction)actionFeed:(id)sender {
}

@end
