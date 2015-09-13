//
//  EyeWitnessViewController.m
//  iApp
//
//  Created by Saif Chaudhary on 9/4/15.
//  Copyright (c) 2015 Saif Chaudhary. All rights reserved.
//

#import "EyeWitnessViewController.h"

@interface EyeWitnessViewController ()

@end

@implementation EyeWitnessViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _imagwViewPerson.layer.cornerRadius = _imagwViewPerson.frame.size.height/2;
    _imagwViewPerson.clipsToBounds = YES;

    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
    [self setupNavigationBar];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)setupNavigationBar
{
    [[self navigationController] setNavigationBarHidden:NO animated:YES];
    self.navigationController.navigationBar.translucent = YES;
    self.navigationController.navigationBar.shadowImage = [UIImage new];
    self.navigationController.view.backgroundColor = [UIColor clearColor];
    [self.navigationController.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    self.navigationController.navigationBar.backgroundColor = [UIColor clearColor];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    
    if([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
        return NO;
    }
    
    return YES;
}

-(void)textViewDidBeginEditing:(UITextView *)textView
{
    textView.text = @"";
}
-(void)textViewDidEndEditing:(UITextView *)textView
{
    if (textView == _textViewLinks) {
        
        if ([textView.text isEqualToString:@""]) {
            
           _textViewLinks.text = @"Post Eye Witness Acoount";
        }
    }
    else
    {
        if ([textView.text isEqualToString:@""]) {
            
            _textViewtags.text = @"Add Tag";
        }
    }
}
-(void)showAlert
{
    [[[UIAlertView alloc]initWithTitle:@"" message:@"Coming soon" delegate:self cancelButtonTitle:@"Okay" otherButtonTitles:nil, nil]show];

}


- (IBAction)actionBtnToggle:(id)sender {
    [self showAlert];
    
}

- (IBAction)actionBtnLocation:(id)sender {
    [self showAlert];

}

- (IBAction)actionBtnPost:(id)sender {
    [self showAlert];

}
@end
