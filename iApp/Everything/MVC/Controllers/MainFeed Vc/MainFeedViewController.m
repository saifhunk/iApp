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
    [self SetupUI];
    
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

-(void)SetupUI
{
        _arrayDataTop = [[NSArray alloc]initWithObjects:@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg", nil];
    _arrayDataBottom = [[NSArray alloc]initWithObjects:@"5.jpg",@"3.jpg",@"4.jpg",@"1.jpg",@"2.jpg", nil];

}

#pragma mark - ViewHeirarchy


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    if (_collectionViewTop == collectionView) {
        
        return _arrayDataTop.count;
    }
    else
    {
        return _arrayDataBottom.count;
    }
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (_collectionViewTop == collectionView) {
        
        
        MainFeedCollectionViewCellTop * cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellTop forIndexPath:indexPath];
        CGRect height = [[UIScreen mainScreen]bounds];
        
        if (Height4s == height.size.height) {
            
            cell.constraintBtnEye.constant = 10;
        }
        cell.ImageVIewBack.image = [UIImage imageNamed:[_arrayDataTop objectAtIndex:indexPath.row]];
        cell.labelName.text=@"Superman";
        cell.labelDetails.text= @"Coming Soon";
        cell.labelWebsite.text = @"wwww.superman.com";
        cell.indexpath = indexPath;
        cell.DelegateJournlist = self;
        return cell;
        
    }
    
    else
    {
        MainFeedCollectionViewCellBottom * cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellBottom forIndexPath:indexPath];
        
        cell.labelName.text=@"Batman";
        cell.labelDetails.text= @"Coming Soon";
        cell.labelWebsite.text = @"wwww.batman.com";
        [cell.ImageVIewBack setImage:[UIImage imageNamed:[_arrayDataBottom objectAtIndex:indexPath.row]]];
        return cell;
        
    }
    
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:SeguePost sender:self];
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
    [self performSegueWithIdentifier:SegueJournalist sender:self];
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
