//
//  RegisterViewController.h
//  FoundNemo
//
//  Created by Binit Vermani on 27/06/15.
//  Copyright (c) 2015 Binit Vermani. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Header.h"


@interface RegisterViewController : UIViewController<UITextFieldDelegate>

@property BOOL boolInternetCheck;

#pragma mark - IBOutlets

@property (weak, nonatomic) IBOutlet UILabel *labelName;
@property (weak, nonatomic) IBOutlet UITextField *tfName;
@property (weak, nonatomic) IBOutlet UILabel *labelEmail;
@property (weak, nonatomic) IBOutlet UITextField *tfEmail;
@property (weak, nonatomic) IBOutlet UIButton *btnCancel;
@property (weak, nonatomic) IBOutlet UILabel *labelGender;
@property (weak, nonatomic) IBOutlet UIButton *btnMale;
@property (weak, nonatomic) IBOutlet UILabel *labelCity;
@property (weak, nonatomic) IBOutlet UIButton *btnNext;
@property (weak, nonatomic) IBOutlet UIView *viewPassword;
@property (weak, nonatomic) IBOutlet UIView *viewUserDetial;
@property (weak, nonatomic) IBOutlet UIButton *btnCurrentCity;
@property (weak, nonatomic) IBOutlet UIButton *btnFemale;
@property (weak, nonatomic) IBOutlet UILabel *labelSignUp;
@property (weak, nonatomic) IBOutlet UITextField *tfPassword;
@property (weak, nonatomic) IBOutlet UITextField *tfReEnterPassword;
@property (weak, nonatomic) IBOutlet UIView *viewMale;
@property (weak, nonatomic) IBOutlet UIView *viewFemale;

#pragma mark - button actions

- (IBAction)actionBtnMale:(id)sender;
- (IBAction)actionBtnCurrentCity:(id)sender;
- (IBAction)actionBtnFemale:(id)sender;
- (IBAction)actionBtnCancel:(id)sender;
- (IBAction)actionBtnNext:(id)sender;

@end