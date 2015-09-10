//
//  MyFeedViewController.h
//  iApp
//
//  Created by Saif Chaudhary on 9/10/15.
//  Copyright (c) 2015 Saif Chaudhary. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Header.h"

@interface MyFeedViewController : UIViewController<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>

#pragma mark - Custom property

@property(nonatomic,strong)NSArray * arrayDataTop;
@property(nonatomic,strong)NSArray * arrayDataBottom;


#pragma mark - IBOutlet

@property (weak, nonatomic) IBOutlet UIView *viewBackgroundImage;
@property (weak, nonatomic) IBOutlet UIImageView *imageViewPerson;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionViewTop;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionViewBottom;

#pragma mark - IBAction
- (IBAction)actionBtnClose:(id)sender;

- (IBAction)actionBtnSettings:(id)sender;

- (IBAction)actionBtnAddPost:(id)sender;

@end
