//
//  MainFeedViewController.m
//  iApp
//
//  Created by Saif Chaudhary on 04/06/1937 SAKA.
//  Copyright (c) 1937 SAKA Saif Chaudhary. All rights reserved.

#import "MainFeedViewController.h"

@interface MainFeedViewController ()
{
    BOOL isfirstTime;
}

@end

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

-(void)viewWillLayoutSubviews
{
 
}

-(void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




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
        return cell;
        
    }
    
    else
    {
        MainFeedCollectionViewCellBottom * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MainFeedCollectionViewCellBottom" forIndexPath:indexPath];
        return cell;
 
    }
    
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (_collectionViewTop == collectionView) {
        


    return CGSizeMake(self.collectionViewTop.frame.size.width,self.collectionViewTop.frame.size.height/2);
    }
    else
    {
        return CGSizeMake(self.collectionViewBottom.frame.size.width/2.2,self.collectionViewBottom.frame.size.height/2);
    }

}



#pragma mark - IBAction

- (IBAction)actionBtnGroup:(id)sender {
}

- (IBAction)actionBtnProfile:(id)sender {
}

- (IBAction)actionBnFilter:(id)sender {
}

@end
