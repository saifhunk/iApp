//
//  LoginViewViewController.h
//  iApp
//
//  Created by Saif Chaudhary on 03/06/1937 SAKA.
//  Copyright (c) 1937 SAKA Saif Chaudhary. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewViewController : UIViewController<UITextFieldDelegate>

#pragma mark - IBOutlet

@property (weak, nonatomic) IBOutlet UIButton *btnRegister;
@property (weak, nonatomic) IBOutlet UITextField *tfEmail;


#pragma mark - IBAction

- (IBAction)actionBtnFacebook:(id)sender;

- (IBAction)actionBtnLogin:(id)sender;

- (IBAction)actionBtnRegister:(id)sender;


@end
