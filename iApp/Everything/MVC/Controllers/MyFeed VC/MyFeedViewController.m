//
//  MyFeedViewController.m
//  iApp
//
//  Created by Saif Chaudhary on 9/10/15.
//  Copyright (c) 2015 Saif Chaudhary. All rights reserved.
//

#import "MyFeedViewController.h"

@interface MyFeedViewController ()

@end

#define Height4s 480

@implementation MyFeedViewController

#pragma mark - ViewHeirarchy

- (void)viewDidLoad {
    [super viewDidLoad];
    [self SetupUI];
    
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [[self navigationController] setNavigationBarHidden:YES animated:NO];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

-(void)SetupUI
{
    _arrayDataBottom = [[NSArray alloc]initWithObjects:@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg", nil];
    _arrayDataTop = [[NSArray alloc]initWithObjects:@"5.jpg",@"3.jpg",@"4.jpg",@"1.jpg",@"2.jpg", nil];
    _imageViewPerson.layer.cornerRadius = _imageViewPerson.frame.size.height/2;
    _viewBackgroundImage.layer.cornerRadius = _viewBackgroundImage.frame.size.height/2;
    _viewBackgroundImage.layer.borderWidth = 2.0f;
    _viewBackgroundImage.layer.borderColor = [UIColor whiteColor].CGColor;
    
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



- (IBAction)actionBtnClose:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)actionBtnSettings:(id)sender {
}

- (IBAction)actionBtnAddPost:(id)sender {
}
@end
