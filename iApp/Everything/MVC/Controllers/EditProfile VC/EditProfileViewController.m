//
//  EditProfileViewController.m
//  iApp
//
//  Created by Saif Chaudhary on 9/6/15.
//  Copyright (c) 2015 Saif Chaudhary. All rights reserved.
//

#import "EditProfileViewController.h"

@interface EditProfileViewController ()

@end

@implementation EditProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //[[self navigationController] setNavigationBarHidden:NO animated:YES];
    
    

    [self setupUi];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [[self navigationController] setNavigationBarHidden:NO animated:YES];
    self.navigationController.navigationBar.translucent = YES;
    self.navigationController.navigationBar.shadowImage = [UIImage new];
    self.navigationController.view.backgroundColor = [UIColor clearColor];
    [self.navigationController.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    self.navigationController.navigationBar.backgroundColor = [UIColor clearColor];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    UIBarButtonItem *anotherButton = [[UIBarButtonItem alloc] initWithTitle:@"Save" style:UIBarButtonItemStylePlain target:self action:@selector(BtnSaveClicked:)];
    [anotherButton setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                        [UIFont fontWithName:@"Helvetica-bold" size:18.0], NSFontAttributeName,
                                        [UIColor whiteColor], NSForegroundColorAttributeName,
                                        nil] 
                              forState:UIControlStateNormal];

    self.navigationItem.rightBarButtonItem = anotherButton;



}
-(void)BtnSaveClicked:(UIButton *)btn
{
    
}

-(void)setupUi
{
    
    _imageViewPerson.layer.cornerRadius = _imageViewPerson.frame.size.height/2;
    _VIewImageView.layer.cornerRadius = _VIewImageView.frame.size.height/2;
    _viewChangePassword.layer.cornerRadius = 4.0f;
    _VIewImageView.layer.borderWidth = 2.0f;
    _VIewImageView.layer.borderColor = [UIColor whiteColor].CGColor;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)actionBtnChangeProfile:(id)sender {
}
@end
