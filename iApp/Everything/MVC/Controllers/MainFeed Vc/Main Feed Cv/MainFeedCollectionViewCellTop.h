//
//  MainFeedCollectionViewCellTop.h
//  iApp
//
//  Created by Saif Chaudhary on 8/27/15.
//  Copyright (c) 2015 Saif Chaudhary. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol JournlistClicked

-(void)BtnJournlistClicked:(NSIndexPath *)indepath;

@end



@interface MainFeedCollectionViewCellTop : UICollectionViewCell

@property(nonatomic,strong)NSIndexPath * indexpath;
@property(nonatomic,assign)id<JournlistClicked>DelegateJournlist;
@property (weak, nonatomic) IBOutlet UIImageView *ImageVIewBack;
@property (weak, nonatomic) IBOutlet UIView *ViewInfo;
@property (weak, nonatomic) IBOutlet UIImageView *ImageViewPerson;
@property (weak, nonatomic) IBOutlet UILabel *labelName;

@property (weak, nonatomic) IBOutlet UIButton *btnStar;
@property (weak, nonatomic) IBOutlet UILabel *labelDetails;
@property (weak, nonatomic) IBOutlet UILabel *labelWebsite;
@property (weak, nonatomic) IBOutlet UIButton *btnJournalist;
@property (weak, nonatomic) IBOutlet UIButton *btnEye;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constraintBtnEye;
- (IBAction)actionBtnJournalist:(id)sender;
- (IBAction)actionBtnEyeWitness:(id)sender;

@end
