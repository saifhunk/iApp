//
//  MainFeedCollectionViewCellBottom.h
//  iApp
//
//  Created by Saif Chaudhary on 8/27/15.
//  Copyright (c) 2015 Saif Chaudhary. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainFeedCollectionViewCellBottom : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *ImageVIewBack;

@property (weak, nonatomic) IBOutlet UIView *ViewInfo;

@property (weak, nonatomic) IBOutlet UIImageView *ImageViewPerson;
@property (weak, nonatomic) IBOutlet UILabel *labelName;

@property (weak, nonatomic) IBOutlet UIButton *btnStar;
@property (weak, nonatomic) IBOutlet UILabel *labelDetails;
@property (weak, nonatomic) IBOutlet UILabel *labelWebsite;


@end
