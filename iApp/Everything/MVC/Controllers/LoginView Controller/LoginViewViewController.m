//
//  LoginViewViewController.m
//  iApp
//
//  Created by Saif Chaudhary on 03/06/1937 SAKA.
//  Copyright (c) 1937 SAKA Saif Chaudhary. All rights reserved.
//

#import "LoginViewViewController.h"

@interface LoginViewViewController ()

@end

@implementation LoginViewViewController

#pragma mark - ViewHeirarchy

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    _tfEmail.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"Email" attributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:50.0f/255.0f green:143.0f/255.0f blue:153.0f/255.0f alpha:1]}];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UITextField Delegates

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [_tfEmail resignFirstResponder];
}

#pragma mark - IBAction

- (IBAction)actionBtnFacebook:(id)sender {
}

- (IBAction)actionBtnLogin:(id)sender {
}

- (IBAction)actionBtnRegister:(id)sender {
}
@end
