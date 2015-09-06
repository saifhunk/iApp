//
//  EditProfileViewController.h
//  iApp
//
//  Created by Saif Chaudhary on 9/6/15.
//  Copyright (c) 2015 Saif Chaudhary. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EditProfileViewController : UIViewController

#pragma mark - IBOutlet

@property (weak, nonatomic) IBOutlet UIImageView *imageViewBig;
@property (weak, nonatomic) IBOutlet UIView *VIewImageView;
@property (weak, nonatomic) IBOutlet UIImageView *imageViewPerson;
@property (weak, nonatomic) IBOutlet UILabel *labelEmail;
@property (weak, nonatomic) IBOutlet UILabel *labelName;
@property (weak, nonatomic) IBOutlet UIView *viewChangePassword;

#pragma mark - IBAction

- (IBAction)actionBtnChangeProfile:(id)sender;
@end
