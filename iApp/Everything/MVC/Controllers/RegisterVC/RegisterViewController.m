//
//  RegisterViewController.m
//  FoundNemo
//
//  Created by Binit Vermani on 27/06/15.
//  Copyright (c) 2015 Binit Vermani. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()

@end

#pragma mark - View Hierarchy

@implementation RegisterViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    [self initializingUI];
}

-(void)viewWillAppear:(BOOL)animated {
    
    [UIApplication sharedApplication].statusBarHidden = NO;

}

-(void)dealloc {
    
   
}

-(void)viewDidAppear:(BOOL)animated {
}

-(void)viewWillDisappear:(BOOL)animated {
}

-(void)viewDidDisappear:(BOOL)animated {
}

-(void)citySelected : (NSNotification *)noti {
    
    [_btnCurrentCity setTitle:[noti.userInfo valueForKey:@"city"] forState:UIControlStateNormal];
}

#pragma mark - Initialize UI

-(void)initializingUI {
    
    [self initializingTitles];
    [_viewMale setHidden:NO];
    [_viewFemale setHidden:YES];
    [_btnMale setSelected:YES];
    _viewUserDetial.layer.cornerRadius = 5;
    _viewPassword.layer.cornerRadius = 5;
    _btnCancel.layer.cornerRadius = 5;
    _btnNext.layer.cornerRadius = 5;
}

-(void)initializingTitles {
    
    _tfName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"Name" attributes:@{NSForegroundColorAttributeName: [UIColor whiteColor]}];
    _tfEmail.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"Email" attributes:@{NSForegroundColorAttributeName: [UIColor whiteColor]}];
    _tfPassword.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"Password" attributes:@{NSForegroundColorAttributeName: [UIColor whiteColor]}];
    _tfReEnterPassword.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"Re-enter Password" attributes:@{NSForegroundColorAttributeName: [UIColor whiteColor]}];
    [_btnMale setTitle:@"Male" forState:UIControlStateNormal];
    [_btnFemale setTitle:@"female" forState:UIControlStateNormal];
    [_btnCancel setTitle:@"Cancel" forState:UIControlStateNormal];
    [_btnNext setTitle:@"Next" forState:UIControlStateNormal];
    [_btnCurrentCity setTitle:@"Current Location" forState:UIControlStateNormal];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    [self.view endEditing:YES];
}

#pragma mark - AlertView

-(void)alertView : (NSString *)message {
    
    [[[UIAlertView alloc] initWithTitle:@"Fields not filled :" message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
}

#pragma mark - button actions

- (IBAction)actionBtnMale:(id)sender {
    
    [_btnMale setSelected:YES];
    [_btnFemale setSelected:NO];
    [_viewMale setHidden:NO];
    [_viewFemale setHidden:YES];
}

- (IBAction)actionBtnCurrentCity:(id)sender {
    
   }

- (IBAction)actionBtnFemale:(id)sender {
    
    [_btnFemale setSelected:YES];
    [_btnMale setSelected:NO];
    [_viewMale setHidden:YES];
    [_viewFemale setHidden:NO];
}

- (IBAction)actionBtnCancel:(id)sender {
    
    [self.view endEditing:YES];
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)actionBtnNext:(id)sender {
    
    [self.view endEditing:YES];
    
    if(0 == [_tfName.text length]) {
        
        [self alertView:@"Please enter a valid Username"];
        return;
    }
    
}

#pragma mark - TextField Delegates

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    
    return YES;
}

-(void)textFieldDidBeginEditing:(UITextField *)textField {
    
    if(_tfPassword == textField || _tfReEnterPassword == textField) {
     
        [UIView animateWithDuration:0.25 animations:^{
            
            self.view.transform = CGAffineTransformMakeTranslation(0, -200);
        }];
    }
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField {

    [UIView animateWithDuration:0.25 animations:^{
        
        self.view.transform = CGAffineTransformMakeTranslation(0, 0);
    }];
    
    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    if([_tfName isFirstResponder]) {
        
        [_tfEmail becomeFirstResponder];
    }
    else if ([_tfEmail isFirstResponder]) {
        
        [self.view endEditing:YES];
    }
    else if ([_tfPassword isFirstResponder]) {
        
        [_tfReEnterPassword becomeFirstResponder];
    }
    else {
        
        [self.view endEditing:YES];
    }
    
    return YES;
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
}

@end