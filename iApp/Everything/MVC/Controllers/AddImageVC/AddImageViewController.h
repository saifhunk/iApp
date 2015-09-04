//
//  AddImageViewController.h
//  FoundNemo
//
//  Created by Binit Vermani on 27/06/15.
//  Copyright (c) 2015 Binit Vermani. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Header.h"

@interface AddImageViewController : UIViewController<UIActionSheetDelegate, UIImagePickerControllerDelegate,UINavigationControllerDelegate>

@property BOOL boolInternetCheck;
@property (nonatomic, retain) NSMutableDictionary * dictUserInfo;
-(void)getUserInfo : (NSDictionary *)dictInfo;

#pragma mark - IBOutlets

@property (weak, nonatomic) IBOutlet UILabel *labelAddPictures;
@property (weak, nonatomic) IBOutlet UIButton *btnDone;
@property (weak, nonatomic) IBOutlet UIButton *btnAddPicture;
@property (weak, nonatomic) IBOutlet UIImageView *imageViewProfile;
@property (weak, nonatomic) IBOutlet UIButton *btnBack;
@property (weak, nonatomic) IBOutlet UIButton *btnProfileImage;

#pragma mark - button actions

- (IBAction)actionBtnDone:(id)sender;
- (IBAction)actionBtnAddPictures:(id)sender;
- (IBAction)actionBtnBack:(id)sender;

@end